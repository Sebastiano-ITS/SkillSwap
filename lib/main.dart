import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // Configurazione Firebase per il Web
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyBUsnd5mGb50sGZR8JKP8pUTau5vWd2gNY",
        authDomain: "skillswap-9b65c.firebaseapp.com",
        projectId: "skillswap-9b65c",
        storageBucket: "skillswap-9b65c.firebasestorage.app",
        messagingSenderId: "476854991127",
        appId: "1:476854991127:web:a88a3ee55915a40bffdf52"
      ),
    );
  } else {
    // Configurazione Firebase per Mobile
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthPage(),
    );
  }
}
