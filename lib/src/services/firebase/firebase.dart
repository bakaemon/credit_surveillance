import 'package:injectable/injectable.dart';

import 'fcm.dart';
import 'firestore.dart';

@injectable
class FirebaseService {
  const FirebaseService(
    this.notification,
    this.firestore,
  );

  final FCMService notification;
  final FirestoreService firestore;
}
