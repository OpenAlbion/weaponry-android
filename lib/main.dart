import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:openalbion_weaponry/data/vos/search_result_vo.dart';
import 'package:openalbion_weaponry/firebase_options.dart';
import 'package:openalbion_weaponry/persistent/dao/search_result_dao.dart';
import 'package:openalbion_weaponry/persistent/hive_constants.dart';

import 'app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final settingsController = SettingsController(SettingsService());
  settingsController.loadSettings();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  _handleFirebaseCloudMessaging();
  await _initializeAppCheck();
  await _initializeHive();
  _initializeOrientation();
  // await NetworkRepositoryImpl().searchItem(text: "scholar");

  runApp(MyApp(settingsController: settingsController));
}

void _handleFirebaseCloudMessaging() {
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');
    _showLocalNotification(message.data['title'], message.data['message']);
    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });
}

void _showLocalNotification(String title, String message) async {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  // request permission
  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
      ?.requestPermission();
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('app_icon');

  const AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
    '100',
    'your channel name',
    channelDescription: 'your channel description',
    importance: Importance.max,
    priority: Priority.high,
    ticker: 'ticker',
    icon: "app_icon",
  );
  const NotificationDetails notificationDetails =
      NotificationDetails(android: androidNotificationDetails);
  await flutterLocalNotificationsPlugin.show(10, title, message, notificationDetails, payload: 'item x');
}

_initializeAppCheck() async {
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'recaptcha-v3-site-key',
    // Default provider for Android is the Play Integrity provider. You can use the "AndroidProvider" enum to choose
    // your preferred provider. Choose from:
    // 1. debug provider
    // 2. safety net provider
    // 3. play integrity provider
    androidProvider: AndroidProvider.playIntegrity,
  );
}

_initializeHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SeachResultVOAdapter());

  await Hive.openBox<SearchResultVO>(HiveConstants.BOX_NAME_SEARCH_RESULT_VO);
}

void _initializeOrientation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
