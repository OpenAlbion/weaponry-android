import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository.dart';

class FirebaseAnalyticsRepositoryImpl implements FirebaseAnalyticsRepository {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static final FirebaseAnalyticsRepositoryImpl _singleton = FirebaseAnalyticsRepositoryImpl._internal();

  factory FirebaseAnalyticsRepositoryImpl() {
    return _singleton;
  }

  FirebaseAnalyticsRepositoryImpl._internal();

  @override
  void reportToFirebase(String message) {
    analytics.logEvent(name: message);
  }

  @override
  void reportOpenApp() {
    analytics.logAppOpen();
  }
}
