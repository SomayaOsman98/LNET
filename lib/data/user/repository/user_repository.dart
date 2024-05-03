import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../model/user_model.dart';

class UserRepository {
  const UserRepository();
  addUser({required Singleuser singleUser}) {
    FirebaseFirestore.instance.collection('users')
        .add(singleUser.toJson()).then((value) {
      Fluttertoast.showToast(
        msg: "تمت إضافة المستخدم بنجاح",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
    }

    );
  }
  editUser({required Singleuser singleUser}) {
    FirebaseFirestore.instance.collection('users')
        .doc(singleUser.id.toString())
        .set(singleUser.toJson()).then((value) => print("User edit"));
  }


}