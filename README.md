![OpenAlbion Weaponry](https://github.com/OpenAlbion/weaponry-android/blob/development/images/app_banner_full_resolution.png)<br>

## OpenAlbion Weaponry Application
This project is open-source mobile project to showcase our api data and help the begineer players to learn about the variety of Albion Online items. You can also checkout api repository which is also open-source and you can generate api token for your own application. All of the market price in the application are from the from the exceptional efforts of [The Albion Online Data Project](https://www.albion-online-data.com/) which offers a client designed for the collection of price information, along with an API for accessing that valuable data. This project serves as an invaluable resource for players, enabling them to stay informed about item prices within the game.

## Installation
1. Create your API token at [api.openalbion.com](https://openalbion.com/).
2. Crate `.env` file in root folder of the project. In the `.env` file, create API_TOKEN variable.
```
API_TOKEN = '...Your API Key...'
```
3. In `api_constants.dart` file, update based url.
```
// change api/weaponry to api/v1
static const OPEN_ALBION_URL = "https://api.openalbion.com/api/v1";
```
4. Remove _initializeAppCheck() function in main and analytics function in providers if you don't use Firebase App Check And Analytics.
5. Modify `network_repository_impl.dart` to add API token. And replace appCheckToken in network call with apiToken.
```
// import necessary library
..
..
  NetworkRepositoryImpl.internal() {
    // load .env file
    _initializeEnv();
  }
  
  void _initializeEnv() async {
    await dotenv.load(fileName: ".env");
    var apiToken = dotenv.env['API_TOKEN'];
  }
  
  ..
  ..
  
    @override
  Future<Either<AppError, List<CategoryVO>>> getCategoryList() async {
    try {
      // remove appCheckToken
      // final appCheckToken = await FirebaseAppCheck.instance.getToken();
      // if (appCheckToken == null) return Left(AppError(code: "-", message: "FireAppCheck Token Null"));
            
      // remove appCheckToken and pass apiToken
      // var response = await _albionClient.openAlbionApi().getCategoryList(appCheckToken: appCheckToken);
      final apiToken = dotenv.env['API_TOKEN'];
      var response = await _albionClient.openAlbionApi().getCategoryList(apiToken: apiToken);
      return Right(response.data);
      
    } on DioError catch (e) {
      return Left(ErrorMapper.mapDioToAppError(e));
    } on JsonUnsupportedObjectError catch (_) {
      return Left(AppError(code: "-", message: "Respond is not Json"));
    } on TypeError catch (_) {
      return Left(AppError(code: "-", message: "Invalid Json Type"));
    } on FirebaseException catch (e) {
      return Left(AppError(code: "Firebase Exception", message: "${e.message}"));
    }
  }

```
6. Create apiToken argument in `market_price_api.dart` and `open_albion_api.dart`.
```
  @GET("/categories")
  Future<ResponseCategoryList> getCategoryList();
  @GET("/categories?api_token={apiToken}")
  Future<ResponseCategoryList> getCategoryList(
    // @Header(ApiConstants.X_Firebase_AppCheck) required String appCheckToken,
    @Path() apiToken,
  );
```
7. Run pub get and build_runner in terminal
```
flutter pub get
flutter packages run build_runner build --delete-conflicting-outputs
```

## API Documentation

Read the full documentation at [openalbion.com](https://openalbion.com).

## License

The OpenAlbion is open-sourced software licensed under the [MIT license](https://opensource.org/license/mit/).
