import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyChnVM_JGror6BzGgWThDVNZQvRF6VKybM",
            authDomain: "habits-tracker-3329e.firebaseapp.com",
            projectId: "habits-tracker-3329e",
            storageBucket: "habits-tracker-3329e.appspot.com",
            messagingSenderId: "370481031506",
            appId: "1:370481031506:web:f103f6b6369eae41d9728b",
            measurementId: "G-6Q3N4J4LZN"));
  } else {
    await Firebase.initializeApp();
  }
}
