import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAiQKuwy_iWtLuj5CrTtFttTnztP9Q7JGQ",
            authDomain: "globa-app-53c40.firebaseapp.com",
            projectId: "globa-app-53c40",
            storageBucket: "globa-app-53c40.appspot.com",
            messagingSenderId: "989066695016",
            appId: "1:989066695016:web:c9df582def25d5a70806dd",
            measurementId: "G-V9QY53B83Q"));
  } else {
    await Firebase.initializeApp();
  }
}
