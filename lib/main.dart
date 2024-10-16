import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'services/google_signin_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AuthApp - Google - Apple'),
          actions: [
            IconButton(
                onPressed: () {
                 GoogleSigninService.signOut();
                },
                icon: const Icon(FontAwesomeIcons.doorOpen))
          ],
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  splashColor: Colors.transparent,
                  minWidth: double.infinity,
                  height: 40,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () {
                    GoogleSigninService.signInWithGoogle();
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.google, color: Colors.white),
                      SizedBox(width: 20),
                      Text('Sign in with Google',
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
