import 'package:finance/Custom%20Weight/BackBottom.dart';
import 'package:finance/Custom%20Weight/CustomBottom.dart';
import 'package:finance/Custom%20Weight/CustomTextFiled.dart';
import 'package:finance/Custom%20Weight/Svg_Logo.dart';
import 'package:finance/Custom%20Weight/WelcomText.dart';
import 'package:finance/Routing/App_Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailcontroller;
  late TextEditingController passwordcontroller;

  @override
  void initState() {
    super.initState();

    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 44.h, left: 22.w),
            child: Backbottom(),
          ),
          SizedBox(height: 28.h),
          Welcomtext(Text: "Welcome back! Again!"),
          SizedBox(height: 32.h),
          Customtextfiled(
            hinttext: 'Enter your email',
            controller: emailcontroller,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your email';
              } else
                return null;
            },
          ),
          SizedBox(
            height: 12,
          ),
          Customtextfiled(
            obscuretext: true,
            controller: passwordcontroller,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your password';
              }

              if (value.length < 8) {
                return 'Password must be at least 8 characters';
              }

              return null;
            },
            hinttext: 'Enter your password',
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.visibility_off_outlined,
                  size: 16, color: Color(0xff6A707C)),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 22.w),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushNamed('/ForgotPassword');
                },
                child: Text('Forgot Password?'),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombottom(
              text: 'Login',
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.profile);
              },
            ),
          ),
          SizedBox(height: 35.h),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    endIndent: 1,
                  ),
                ),
                Text('Or Login with'),
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          SvgLogo(),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an account?'),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed('/register');
                },
                child: Text('Register Now'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
