import 'package:finance/Custom%20weight/BackBottom.dart';
import 'package:finance/Custom%20weight/CustomBottom.dart';

import 'package:finance/Custom%20weight/WelcomText.dart';
import 'package:finance/Routing/App_Routes.dart';
import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
            Text: 'OTP Verification',
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 22.w, left: 22.w),
            child: Text(
              "Enter the verification code we just sent on your email address.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          OtpTextField(
            showFieldAsBox: true,
            disabledBorderColor: Color(0xff202955),
            enabledBorderColor: Color(0xff202955),
            fieldHeight: 70.h,
            fieldWidth: 60.w,
            numberOfFields: 4,
            textStyle: TextStyle(color: Appcolors.primaryColor, fontSize: 22),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 38.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 22.w, left: 22.h),
            child: Custombottom(
              text: 'Verify',
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.caratenewpassword);
              },
            ),
          )
        ],
      ),
    );
  }
}
