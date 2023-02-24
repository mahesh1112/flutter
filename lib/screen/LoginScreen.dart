import 'dart:js';

import 'package:flutter/material.dart';
import '../Component/textfeild.dart';
import '../Constants.dart' as constant;
import "package:firebase_auth/firebase_auth.dart";

import 'MainScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

  late String Email, Password;
  int myvar = 0;
  @override
  Widget build(BuildContext context) {
    final _auth= FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Image.network('https://o.remove.bg/downloads/c30cc439-f21f-4c55-b634-404cc67c0ffe/png-clipart-shadow-fight-2-special-edition-shadow-fight-3-lynx-free-gems-lynx-game-animals-thumbnail-removebg-preview.png'),

        password(text: 'email', isPassword: false, onChanged: (value) {
          Email = value;
        },),
          password(text: 'password', isPassword: true, onChanged: (value) {
            Password = value;
          },),

          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: 180,
              color:constant.emailPrimary,
              child: TextButton(

                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(
                        width: 4,
                        color: constant.textPrimary
                      ),

                    )
                  ),
                  onPressed: () async {
                    try {
                      final newuser =
                          await _auth.signInWithEmailAndPassword(
                          email: Email, password: Password);

                      if (newuser.user != null && myvar != 0) {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
                      }
                    }catch(e){
                      debugPrint('$e');
                    }
                  },
                  child: Text(
                    'Login',
                  style: TextStyle(
                     fontSize: 40.0,
                     color: constant.textPrimary,
                ),
              )),
            ),
          ),
          Expanded(child: Container())






        ],
      ),
    );
  }
}





