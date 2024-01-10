import 'package:app/src/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addMessage(Message message) async {
    await firestore.collection('messages').add(message.toJson());
  }

  // stream of messages that are of type 'notification'
  Stream<List<Message>> get notifications {
    return firestore
        .collection('messages')
        .where('type', isEqualTo: 'notification')
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => Message.fromJson(doc.data())).toList(),
        );
  }
}
