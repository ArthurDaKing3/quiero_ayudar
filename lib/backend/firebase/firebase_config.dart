import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBDcJx53C4O2j1Uu3DUfX_kiZceQSZaUQA",
            authDomain: "inovatec-8138b.firebaseapp.com",
            projectId: "inovatec-8138b",
            storageBucket: "inovatec-8138b.appspot.com",
            messagingSenderId: "752644449066",
            appId: "1:752644449066:web:d763296b91cc07b9c1b453"));
  } else {
    await Firebase.initializeApp();
  }
}
