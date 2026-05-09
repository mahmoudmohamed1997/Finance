import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(16.sp),
      crossAxisSpacing: 12.sp,
      mainAxisSpacing: 12.sp,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.sp),
            border: Border.all(
              color: Color(0xffE3E9ED),
              width: 1,
            ),
          ),
          height: 140.h,
          width: 156.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.send, color: Appcolors.primaryColor, size: 48.sp),
              SizedBox(height: 12.h),
              Text(
                'Send money',
                style: TextStyle(fontSize: 16.sp),
              ),
              Text(
                'Take acc to acc',
                style: TextStyle(color: Color(0xff9CA4AB), fontSize: 12.sp),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.sp),
            border: Border.all(
              color: Color(0xffE3E9ED),
              width: 1,
            ),
          ),
          height: 140.h,
          width: 156.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.wallet, color: Appcolors.primaryColor, size: 48.sp),
              SizedBox(height: 12.h),
              Text(
                'Pay the bill',
                style: TextStyle(fontSize: 16.sp),
              ),
              Text(
                'Lorem ipsum',
                style: TextStyle(color: Color(0xff9CA4AB), fontSize: 12.sp),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.sp),
            border: Border.all(
              color: Color(0xffE3E9ED),
              width: 1,
            ),
          ),
          height: 140.h,
          width: 156.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.send, color: Appcolors.primaryColor, size: 48.sp),
              SizedBox(height: 12.h),
              Text(
                'Request',
                style: TextStyle(fontSize: 16.sp),
              ),
              Text(
                'Lorem ipsum',
                style: TextStyle(color: Color(0xff9CA4AB), fontSize: 12.sp),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.sp),
            border: Border.all(
              color: Color(0xffE3E9ED),
              width: 1,
            ),
          ),
          height: 140.h,
          width: 156.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.contact_mail,
                  color: Appcolors.primaryColor, size: 48.sp),
              SizedBox(height: 12.h),
              Text(
                'Contact',
                style: TextStyle(fontSize: 16.sp),
              ),
              Text(
                'Lorem ipsum',
                style: TextStyle(color: Color(0xff9CA4AB), fontSize: 12.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
