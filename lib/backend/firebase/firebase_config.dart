import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC2KTgG_tXtDqS34WLKgTCiLGHIsra_sB8",
            authDomain: "aphoniq-a-i-ia2t4u.firebaseapp.com",
            projectId: "aphoniq-a-i-ia2t4u",
            storageBucket: "aphoniq-a-i-ia2t4u.firebasestorage.app",
            messagingSenderId: "1058207793696",
            appId: "1:1058207793696:web:a88f0b2b11138ea6b6f245"));
  } else {
    await Firebase.initializeApp();
  }
}
