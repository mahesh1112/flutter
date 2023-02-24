import 'dart:ffi';

import 'package:flutter/material.dart';
import '../Constants.dart' as constant;

class password extends StatelessWidget {
  final String text;
  final bool isPassword;
  final Function(String) onChanged;

  const password({
    super.key, required this.text, required this.isPassword, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(
          color: constant.emailPrimary,
        ),
        obscureText: isPassword,
        obscuringCharacter: '@',

        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: constant.emailPrimary,
              fontSize: 40.0,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,


            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: constant.emailPrimary,
                  width: 2,
                  style: BorderStyle.solid,

                )

            )
        ),
      ),

    );
  }
}