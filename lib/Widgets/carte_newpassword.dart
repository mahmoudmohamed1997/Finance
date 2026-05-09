import 'package:finance/Custom%20weight/BackBottom.dart';
import 'package:finance/Custom%20weight/CustomBottom.dart';
import 'package:finance/Custom%20weight/CustomTextFiled.dart';
import 'package:finance/Custom%20weight/WelcomText.dart';
import 'package:finance/Routing/App_Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CarteNewpassword extends StatefulWidget {
  const CarteNewpassword({super.key});

  @override
  State<CarteNewpassword> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CarteNewpassword> {
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
            Text: 'Create new password',
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 22.w, left: 22.w),
            child: Text(
              "Your new password must be unique from those previously used.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Customtextfiled(
            obscuretext: true,
            hinttext: 'New Password',
          ),
          SizedBox(
            height: 15.h,
          ),
          Customtextfiled(
            obscuretext: true,
            hinttext: 'Confirm Password',
          ),
          SizedBox(
            height: 38.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 22.w, left: 22.w),
            child: Custombottom(
              text: 'Reset Password',
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.passwordchanged);
              },
            ),
          ),
        ],
      ),
    );
  }
}
