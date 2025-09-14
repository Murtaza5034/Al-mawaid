import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDd8QWUSIoP7wP67NzqQQM4SAWjebXUNYM",
            authDomain: "al-mawaid-1ihvq0.firebaseapp.com",
            projectId: "al-mawaid-1ihvq0",
            storageBucket: "al-mawaid-1ihvq0.firebasestorage.app",
            messagingSenderId: "844361880651",
            appId: "1:844361880651:web:7741c959e7ed87f59ba9ce"));
  } else {
    await Firebase.initializeApp();
  }
}
