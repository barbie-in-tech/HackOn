import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../constants.dart';

class AuthData with ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  FirebaseAuth get auth {
    return _auth;
  }

  bool _isAuth = false;

  Map _currentUserData = {};

  Map get currentUserData {
    return {..._currentUserData};
  }

  bool get isAuth {
    return _isAuth;
  }

  Future<void> createUser({
    @required String email,
    @required String pass,
    @required String name,
    BuildContext ctx,
  }) async {
    // print("create user running");
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );

      await firestore
          .collection("Users")
          .doc("${userCredential.user.uid}")
          .set({
        "id": "${userCredential.user.uid}",
        "Name": name,
        "email": email,
      });

      // print(
      //   "User Created ${userCredential.user.email}, ${userCredential.user.uid}",
      // );
    } on FirebaseAuthException catch (e) {
      String errMessage = "Unable To Create User!";
      if (e.code == 'email-already-in-use') {
        errMessage = 'The account already exists for that email.';
        errorDialog(ctx, errMessage);
      } else
        errorDialog(ctx, errMessage);
    } catch (e) {
      // print(e);
      errorDialog(ctx, "${e.message}");
    }
  }

  Future<void> login({String email, String pass, BuildContext ctx}) async {
    print("login running");
    _currentUserData.clear();
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      // print(userCredential.user.email);
      await getCurrentUserData();
      print(currentUserData);
      Navigator.of(ctx).pushReplacementNamed(mainScreen);
    } on FirebaseAuthException catch (e) {
      String errMessage = "Unable To Authenticate!";
      if (e.code == 'user-not-found') {
        errMessage = 'No user found for that email.';
        errorDialog(ctx, errMessage);
      } else if (e.code == 'wrong-password') {
        errMessage = 'Wrong password provided for that user.';
        errorDialog(ctx, errMessage);
      } else
        errorDialog(ctx, errMessage);
    }
  }

  Future<void> signOut(BuildContext ctx) async {
    await auth.signOut();
    _currentUserData.clear();

    Navigator.pushNamedAndRemoveUntil(
      ctx,
      mainScreen,
      (Route<dynamic> route) => false,
    );

    notifyListeners();
  }

  Future<void> getCurrentUserData({String collection = "Users"}) async {
    var data;
    try {
      var currentData = await firestore
          .collection(collection)
          .doc(_auth.currentUser.uid)
          .get();
      data = currentData.data();
      // print(data);
      _currentUserData.addAll(data);
      print(currentUserData);
    } catch (e) {
      print(e);
    }
  }

  Future<void> addProduct({
    BuildContext ctx,
    String closetName,
    String productName,
    double price,
    String productDescription,
    String productSize,
    String productColor,
    String proCategory,
    File image,
  }) async {
    // print(currentUserOutletId);
    try {
      final ref =
          storage.ref().child("product_images").child(_auth.currentUser.uid);

      await ref.putFile(image);

      final url = await ref.getDownloadURL();

      await firestore.collection("Users").doc(_auth.currentUser.uid).update({
        "products": FieldValue.arrayUnion([
          {
            "productId": Uuid().v4(),
            "productName": productName,
            "productPrice": price,
            "productDescription": productDescription,
            "productSize": productSize,
            "productColor": productColor,
            "proCategory": proCategory,
            "productImgUrl": url,
          }
        ]),
        "closetName": closetName,
        "isSeller": "true",
      });
      ScaffoldMessenger.of(ctx).showSnackBar(
        snackBar(
          ctx,
          "Product Added",
          "View",
          () {},
        ),
      );
    } catch (err) {
      // print(err);
      String errMsg = "Unable To Add Product!";
      errorDialog(ctx, errMsg);
    }
    notifyListeners();
  }
}
