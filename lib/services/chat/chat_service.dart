import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class ChatService{
  // get instance of fireStore
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  //get a user steam
  Stream<List<Map<String,dynamic>>> getUserStream(){
    return _fireStore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc){
        final user = doc.data();
        return user;
      }).toList();
    });
  }

  //send message

  //get message
}