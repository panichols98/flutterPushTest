import '/services/push_notification_service.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

final getIt = GetIt.instance;
final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

setupServiceLocator() {
  getIt.registerLazySingleton<PushNotificationService>(
      () => PushNotificationService(_firebaseMessaging));
}
