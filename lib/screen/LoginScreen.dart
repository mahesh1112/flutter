import 'package:flutter/material.dart';
import '../Component/textfeild.dart';
import '../Constants.dart' as constant;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Image.network('https://o.remove.bg/downloads/c30cc439-f21f-4c55-b634-404cc67c0ffe/png-clipart-shadow-fight-2-special-edition-shadow-fight-3-lynx-free-gems-lynx-game-animals-thumbnail-removebg-preview.png'),

        password(text: 'email', isPassword: false,),
          password(text: 'password', isPassword: true,),

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
                  onPressed: (){},
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




