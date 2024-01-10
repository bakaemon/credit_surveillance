import 'package:injectable/injectable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

@lazySingleton
class FCMService {
  final messaging = FirebaseMessaging.instance;
}
