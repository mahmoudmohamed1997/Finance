import 'package:finance/Custom%20weight/CustomBottom.dart';
import 'package:finance/Routing/App_Routes.dart';
import 'package:finance/constant/APPStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class passwordchanged extends StatelessWidget {
  const passwordchanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: SvgPicture.asset(
                'assets/Icons/verified.svg',
              ),
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          Text(
            'Password Changed!',
            style: Appstyle.primaryTextStyle,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'Your password has been changed successfully.',
          ),
          SizedBox(
            height: 40.h,
          ),
          Custombottom(
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
            text: 'Back to Login',
          ),
        ],
      ),
    );
  }
}
