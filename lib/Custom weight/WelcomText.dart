import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Welcomtext extends StatefulWidget {
  String? Text;
  Welcomtext({super.key, this.Text});

  @override
  State<Welcomtext> createState() => _WelcomtextState();
}

@override
class _WelcomtextState extends State<Welcomtext> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 22.w, right: 73.w),
        child: Text(widget.Text ?? '',
            style: TextStyle(
                fontFamily: 'Urbanist',
                fontSize: 30.sp,
                color: Appcolors.primaryColor,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
