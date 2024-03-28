import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FirebaseNotificationService extends GetxService {
  late FirebaseMessaging _messaging;
  late NotificationSettings _notificationSettings;
  late FlutterLocalNotificationsPlugin _flutterLocalNotificationPlugin;
  StreamController<String> controller = StreamController<String>();

  init() async {
    await _initPermission();
    await _initLocalNotification();
    await _initListeners();
  }

  Future<void> _initPermission() async {
    _messaging = FirebaseMessaging.instance;
    _notificationSettings = await FirebaseMessaging.instance.requestPermission(provisional: true);
    _flutterLocalNotificationPlugin = FlutterLocalNotificationsPlugin();
    _flutterLocalNotificationPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }

  Future<void> _initLocalNotification() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    _flutterLocalNotificationPlugin.initialize(initializationSettings);
  }

  Future<void> _initListeners() async {
    _messaging.getToken().then((value) {
      debugPrint('FCM token 321 : $value');
      controller.add(value ?? "token unavailable");
    });
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    FirebaseMessaging.onMessage.listen((event) {
      debugPrint('onMessage');
      _showNotification(event.notification!.title, event.notification!.body);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      debugPrint('open app');
      _showNotification(event.notification!.title, event.notification!.body);
    });
  }

  void _showNotification(String? title, String? body) async {
    var androidChannel = const AndroidNotificationDetails(
      '100',
      'open_albion_channel',
      channelDescription: 'Notification channel for OpenAlbion Weaponry application',
      importance: Importance.max,
      priority: Priority.max,
      ticker: 'ticker',
      icon: "app_icon",
    );
    var platForm = NotificationDetails(android: androidChannel);
    await _flutterLocalNotificationPlugin.show(111, title, body, platForm, payload: "-");
  }
}
