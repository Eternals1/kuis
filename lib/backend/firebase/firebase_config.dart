import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAAHR2swd6zxMPpZv3kZd_7MfwlKQNid3U",
            authDomain: "kuis-6vzse7.firebaseapp.com",
            projectId: "kuis-6vzse7",
            storageBucket: "kuis-6vzse7.firebasestorage.app",
            messagingSenderId: "57635243690",
            appId: "1:57635243690:web:16b29a486a7ff6a8f0f2d3"));
  } else {
    await Firebase.initializeApp();
  }
}
