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

          TextButton(onPressed: (){}, child: Text('Login')),
          Expanded(child: Container())






        ],
      ),
    );
  }
}




