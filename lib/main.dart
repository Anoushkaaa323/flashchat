import 'package:flutter/material.dart';
import 'package:flashchatt/screens/welcome_screen.dart';
import 'package:flashchatt/screens/login_screen.dart';
import 'package:flashchatt/screens/registration_screen.dart';
import 'package:flashchatt/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: "AIzaSyDD6NsFEWfhJGi3C-A_GFCWvKFwCeOdi6Q", appId: "1:646987958298:android:5e479311c041164ead69a3", messagingSenderId: "646987958298", projectId: "flashchatt-bea9c")
  );
  runApp(FlashChat());

}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: WelcomeScreen.id ,
      routes: {
        WelcomeScreen.id: (context)=> WelcomeScreen(),
        LoginScreen.id: (context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        ChatScreen.id:(context)=>ChatScreen(),
      },
    );
  }
}