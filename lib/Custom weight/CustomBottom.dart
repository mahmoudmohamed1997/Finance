import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custombottom extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color? color;
  final double? borderRadius;
  final double? height;
  final double? width;
  final Color? Textcolor;

  const Custombottom(
      {super.key,
      this.text,
      this.onPressed,
      this.color,
      this.borderRadius,
      this.height,
      this.width,
      this.Textcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text ?? '',
        style: TextStyle(color: Textcolor ?? Appcolors.whiteColor),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
        backgroundColor: color ?? Appcolors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.sp),
        ),
      ),
    );
  }
}
