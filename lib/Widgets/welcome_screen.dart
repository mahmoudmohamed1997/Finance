import 'package:finance/Custom%20Weight/CustomBottom.dart';
import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'assets/images/welcome_image.png',
            width: 375.w,
            height: 570.h,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 21.h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombottom(
              text: 'Login',
              onPressed: () {
                GoRouter.of(context).pushNamed('/login');
              },
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombottom(
              color: Appcolors.secondaryColor,
              text: 'Register',
              onPressed: () {
                GoRouter.of(context).pushNamed('/register');
              },
              Textcolor: Appcolors.primaryColor,
            ),
          ),
          SizedBox(height: 56.h),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Continue as a guest',
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    color: Color(0xFF202955),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
