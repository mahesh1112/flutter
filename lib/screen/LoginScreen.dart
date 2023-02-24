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
          Image.network('https://wallup.net/wp-content/uploads/2016/01/194784-animals-bears-river.jpg'),

        password(text: 'email', isPassword: false,),
          password(text: 'password', isPassword: true,),

          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Container(
              width: 100,
              color:constant.emailPrimary,
              child: TextButton(

                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(
                        width: 4,
                        color: constant.emailPrimary
                      ),

                    )
                  ),
                  onPressed: (){},
                  child: Text(
                    'Login',
                     style: TextStyle(
                     fontSize: 40.0,
                     color: constant.emailPrimary
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




