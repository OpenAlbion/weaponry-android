![OpenAlbion Weaponry](https://github.com/OpenAlbion/weaponry-android/blob/development/images/app_banner_full_resolution.png)<br>

## OpenAlbion Weaponry Application
This project is open-source mobile project to showcase our api data and help the begineer players to learn about the variety of Albion Online items. You can also checkout api repository which is also open-source and you can generate api token for your own application. All of the market price in the application are from the from the exceptional efforts of [The Albion Online Data Project](https://www.albion-online-data.com/) which offers a client designed for the collection of price information, along with an API for accessing that valuable data. This project serves as an invaluable resource for players, enabling them to stay informed about item prices within the game.

## Installation
1. Create your API token at [api.openalbion.com](https://openalbion.com/).
2. In `api_constants.dart` file, update based url.
```
// change api/weaponry to api/v1
static const OPEN_ALBION_URL = "https://api.openalbion.com/api/v1";
```
3. Modify `network_repository_impl.dart` to add API token. And replace key in network call with apiToken.
```   
var response = await _albionClient.openAlbionApi().getCategoryList(apiToken: YOUR_API_TOKEN);
```
4. Create apiToken argument in `market_price_api.dart` and `open_albion_api.dart`.
```
  @GET("/categories")
  Future<ResponseCategoryList> getCategoryList();
  @GET("/categories?api_token={apiToken}")
  Future<ResponseCategoryList> getCategoryList(
    // Remove Auth Header
    // @Header(ApiConstants.X_WEAPONRY_KEY) required String key,
    @Path() apiToken,
  );
```
5. Run pub get and build_runner in terminal
```
flutter pub get
flutter packages run build_runner build --delete-conflicting-outputs
```

## API Documentation

Read the full documentation at [openalbion.com](https://openalbion.com).

## License

The OpenAlbion is open-sourced software licensed under the [MIT license](https://opensource.org/license/mit/).
