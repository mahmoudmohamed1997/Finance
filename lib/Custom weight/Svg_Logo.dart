import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgLogo extends StatelessWidget {
  const SvgLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 105.w,
            height: 56.h,
            child: SvgPicture.asset('assets/Icons/facebook.svg'),
          ),
          Container(
            width: 105.w,
            height: 56.h,
            child: SvgPicture.asset('assets/Icons/google.svg'),
          ),
          Container(
            width: 105.w,
            height: 56.h,
            child: SvgPicture.asset('assets/Icons/apple.svg'),
          ),
        ],
      ),
    );
  }
}
