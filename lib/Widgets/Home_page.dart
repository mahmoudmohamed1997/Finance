import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance/Custom%20weight/Grid_view.dart';
import 'package:finance/constant/APPStyle.dart';

import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:u_credit_card/u_credit_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22.sp,
                  backgroundImage:
                      const NetworkImage('https://via.placeholder.com/150'),
                ),
                SizedBox(width: 10.sp),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back',
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                    Text(
                      'Mahmoud Mohamed',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.notifications,
                  color: Appcolors.primaryColor,
                  size: 24.sp,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          CarouselSlider(
            items: [
              CreditCardUi(
                cardHolderFullName: 'X-Card',
                cardNumber: '0000000000003434',
                validThru: '12/24',
                topLeftColor: const Color(0xFF5B6EF5),
                bottomRightColor: const Color(0xFF7B8CFF),
                doesSupportNfc: false,
                showBalance: true,
                balance: 23400,
                currencySymbol: 'EG',
                autoHideBalance: false,
                width: 207.w,
              ),
              CreditCardUi(
                cardHolderFullName: 'X-Card2',
                cardNumber: '0000000000003122',
                validThru: '12/26',
                topLeftColor: const Color(0xFF5B6EF5),
                bottomRightColor: const Color(0xFF7B8CFF),
                doesSupportNfc: false,
                showBalance: true,
                balance: 23400,
                currencySymbol: 'EG',
                autoHideBalance: false,
                width: 207.w,
              ),
              CreditCardUi(
                cardHolderFullName: 'X-Card2',
                cardNumber: '0000000000003152',
                validThru: '12/26',
                topLeftColor: const Color(0xFF5B6EF5),
                bottomRightColor: const Color(0xFF7B8CFF),
                doesSupportNfc: false,
                showBalance: true,
                balance: 23400,
                currencySymbol: 'EG',
                autoHideBalance: false,
                width: 207.w,
              ),
            ],
            options: CarouselOptions(
              height: 263.h,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.8,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          DotsIndicator(
            position: _currentIndex.toDouble(),
            dotsCount: 4,
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomGridView(),
        ],
      ),
    );
  }
}
