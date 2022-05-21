import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class FireBase
{

  FirebaseFirestore _firestore=FirebaseFirestore.instance;

  Future<bool> sendMessageToAmal(String Name,String contactinfo,String message) async
  {
    try
    {
      _firestore.collection('messages').doc().set({
        'Name':Name,
        'contactinfo':contactinfo,
        'Message':message
      });
    }
    catch(e)
    {
      return false;
    }
    return true;
  }


}