import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository_impl.dart';

mixin FirebaseAnalyticsMixin {
  final FirebaseAnalyticsRepository mRepository = FirebaseAnalyticsRepositoryImpl();

  void reportOpenApp() {
     mRepository.reportOpenApp();
  }
}
