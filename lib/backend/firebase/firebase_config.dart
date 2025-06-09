import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDJDtvrsTALBB6ZpcXE4H59OVBEkV5ZVmE",
            authDomain: "geekverse-ef629.firebaseapp.com",
            projectId: "geekverse-ef629",
            storageBucket: "geekverse-ef629.firebasestorage.app",
            messagingSenderId: "1008985231964",
            appId: "1:1008985231964:web:609821a69a1123c17f8c99",
            measurementId: "G-KMSHJP0MBL"));
  } else {
    await Firebase.initializeApp();
  }
}
