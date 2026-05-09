import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Backbottom extends StatelessWidget {
  const Backbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 41.h,
        width: 41.w,
        decoration: BoxDecoration(
          color: const Color(0xFFE8ECF4),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new,
              size: 16, color: Appcolors.primaryColor),
        ),
      ),
    );
  }
}
