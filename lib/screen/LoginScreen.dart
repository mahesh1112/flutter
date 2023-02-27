
import 'package:flutter/material.dart';
import '../Component/textfeild.dart';
import '../Constants.dart' as constant;
import "package:firebase_auth/firebase_auth.dart";
import '../Network/Location.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    apiCall();
  }

  void apiCall()async{
    var location = await determinePosition();
    myvar = await constant.apiInstance.getLocation(location.latitude.toString(), location.latitude.toString());
  }

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
          Image.network('https://o.remove.bg/downloads/bcee7efb-f6be-4f32-a468-06b39e57bc63/th-removebg-preview.png'),

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
                    // try {
                    //   final newuser =
                    //       await _auth.signInWithEmailAndPassword(
                    //       email: Email, password: Password);
                    //
                    //   if (newuser.user != null && myvar != 0) {
                    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
                    //   }
                    // }catch(e){
                    //   debugPrint('$e');
                    // }
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
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





