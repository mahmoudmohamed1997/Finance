import 'package:finance/Custom%20Weight/BackBottom.dart';
import 'package:finance/Custom%20weight/CustomBottom.dart';
import 'package:finance/Custom%20weight/CustomTextFiled.dart';
import 'package:finance/Custom%20weight/Svg_Logo.dart';
import 'package:finance/Custom%20weight/WelcomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 44.h, left: 22.w),
              child: Backbottom(),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Welcomtext(
            Text: 'Hello! Register to get started',
          ),
          SizedBox(
            height: 32,
          ),
          Customtextfiled(
            hinttext: 'Username',
          ),
          SizedBox(
            height: 12,
          ),
          Customtextfiled(
            hinttext: 'Email',
          ),
          SizedBox(
            height: 12,
          ),
          Customtextfiled(
            hinttext: 'Password',
          ),
          SizedBox(
            height: 12,
          ),
          Customtextfiled(
            hinttext: 'Confirm password',
          ),
          SizedBox(
            height: 49.h,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Custombottom(
              text: 'Register',
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  endIndent: 1,
                ),
              ),
              Text('Or Register with'),
              Expanded(
                child: Divider(),
              ),
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
          SvgLogo(),
          SizedBox(
            height: 54.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?"),
              TextButton(
                onPressed: () {},
                child: Text('Login Now'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
