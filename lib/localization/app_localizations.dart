import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'OpenAlbion Weaponry'**
  String get appTitle;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'OpenAlbion Weaponry'**
  String get appName;

  /// No description provided for @weaponType.
  ///
  /// In en, this message translates to:
  /// **'Weapon Type'**
  String get weaponType;

  /// No description provided for @armorType.
  ///
  /// In en, this message translates to:
  /// **'Armor Type'**
  String get armorType;

  /// No description provided for @consumables.
  ///
  /// In en, this message translates to:
  /// **'Consumables'**
  String get consumables;

  /// No description provided for @accessories.
  ///
  /// In en, this message translates to:
  /// **'Accessories'**
  String get accessories;

  /// No description provided for @choose_enchantment_level.
  ///
  /// In en, this message translates to:
  /// **'Choose Enchantment Level'**
  String get choose_enchantment_level;

  /// No description provided for @gear_stats.
  ///
  /// In en, this message translates to:
  /// **'Gear Stats'**
  String get gear_stats;

  /// No description provided for @setting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get setting;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @about_project_title.
  ///
  /// In en, this message translates to:
  /// **'About Project'**
  String get about_project_title;

  /// No description provided for @about_project_description.
  ///
  /// In en, this message translates to:
  /// **'OpenAlbion Project is a free and open-source project providing comprehensive Albion Online data and an API for developers to create their own applications. Our API offers free and valuable information of Albion Online game.'**
  String get about_project_description;

  /// No description provided for @about_app_title.
  ///
  /// In en, this message translates to:
  /// **'About App'**
  String get about_app_title;

  /// No description provided for @about_app_description.
  ///
  /// In en, this message translates to:
  /// **'OpenAlbion Weaponry is also an open-source mobile project to showcase our api data and help the beginner player to learn about the variety of Albion Online items. You can checkout in github link below. You can support by giving star to our github repositories.'**
  String get about_app_description;

  /// No description provided for @about_us_title.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get about_us_title;

  /// No description provided for @about_us_description.
  ///
  /// In en, this message translates to:
  /// **'OpenAlbion Project is created by two developer in their free time. We love to play Albion Online game and want to provide comprehensive Albion Online Api with valuable information for developers.\n\nIf you have any idea to improve our project, you can contact us from our discord channel. If you want to play with us, please message directly in discord channel or in-game message box.'**
  String get about_us_description;

  /// No description provided for @about_credits_title.
  ///
  /// In en, this message translates to:
  /// **'Credits'**
  String get about_credits_title;

  /// No description provided for @about_credits_description_part_1.
  ///
  /// In en, this message translates to:
  /// **'All of the market price in the application are from the exceptional efforts of'**
  String get about_credits_description_part_1;

  /// No description provided for @about_credits_description_part_2.
  ///
  /// In en, this message translates to:
  /// **' \"The Albion Online Data Project\" '**
  String get about_credits_description_part_2;

  /// No description provided for @about_credits_description_part_3.
  ///
  /// In en, this message translates to:
  /// **'which offers a client designed for the collection of price information, along with an API for accessing that valuable data. This project serves as an invaluable resource for players, enabling them to stay informed about item prices within the game.'**
  String get about_credits_description_part_3;

  /// No description provided for @dark_mode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get dark_mode;

  /// No description provided for @market_price_server.
  ///
  /// In en, this message translates to:
  /// **'Market Price Server'**
  String get market_price_server;

  /// No description provided for @search_hint.
  ///
  /// In en, this message translates to:
  /// **'Search swords & ...'**
  String get search_hint;

  /// No description provided for @bug_report.
  ///
  /// In en, this message translates to:
  /// **'Bug Report'**
  String get bug_report;

  /// No description provided for @bug_category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get bug_category;

  /// No description provided for @bug_detail.
  ///
  /// In en, this message translates to:
  /// **'Detail'**
  String get bug_detail;

  /// No description provided for @bug_detail_example.
  ///
  /// In en, this message translates to:
  /// **'In axe section, I didn\'t find battle axe.'**
  String get bug_detail_example;

  /// No description provided for @no_internet.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get no_internet;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @invalid_information.
  ///
  /// In en, this message translates to:
  /// **'Invalid Information'**
  String get invalid_information;

  /// No description provided for @shake_to_report.
  ///
  /// In en, this message translates to:
  /// **'Shake To Report'**
  String get shake_to_report;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @you_need_to_upgrade.
  ///
  /// In en, this message translates to:
  /// **'** You need to upgrade latest version to continue using the application. **'**
  String get you_need_to_upgrade;

  /// No description provided for @consumer_description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get consumer_description;

  /// No description provided for @consumer_statics.
  ///
  /// In en, this message translates to:
  /// **'Consumable Statistics'**
  String get consumer_statics;

  /// No description provided for @consumer_crafting_by_product.
  ///
  /// In en, this message translates to:
  /// **'Crafting By Products'**
  String get consumer_crafting_by_product;

  /// No description provided for @consumer_ingredients.
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get consumer_ingredients;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
