import 'package:finance/Custom%20weight/BackBottom.dart';
import 'package:finance/Custom%20weight/CustomBottom.dart';
import 'package:finance/Custom%20weight/CustomTextFiled.dart';
import 'package:finance/Custom%20weight/WelcomText.dart';
import 'package:finance/Routing/App_Routes.dart';
import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

final formKey = GlobalKey<FormState>();
late TextEditingController emailcontroller;

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  void initState() {
    super.initState();
    emailcontroller = TextEditingController();
  }

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
            height: 28.h,
          ),
          Welcomtext(
            Text: 'Forgot Password?',
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 22.w, left: 22.w),
            child: Text(
              "Don't worry! It occurs. Please enter the email address linked with your account.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Form(
            key: formKey,
            child: Customtextfiled(
              controller: emailcontroller,
              validator: (value) {
                if (value == null) {
                  return 'Enter your email';
                } else
                  return null;
              },
              hinttext: 'Enter your email',
            ),
          ),
          SizedBox(
            height: 38.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombottom(
              text: 'Send Code',
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.OtpVerification);
              },
            ),
          ),
          SizedBox(
            height: 380.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Remember Password?',
                style: TextStyle(color: Appcolors.primaryColor),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed('/login');
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Appcolors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
