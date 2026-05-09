import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextfiled extends StatelessWidget {
  final String? hinttext;
  final bool? obscuretext;
  final IconButton? icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const Customtextfiled(
      {super.key,
      this.hinttext,
      this.obscuretext,
      this.icon,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 20.r),
      child: TextFormField(
        style: TextStyle(fontFamily: 'Urbanist', color: Colors.black),
        controller: controller,
        validator: validator,
        obscureText: obscuretext ?? false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          ),
          hintText: hinttext ?? '',
          hintStyle: TextStyle(fontFamily: 'Urbanist', color: Appcolors.black),
          filled: true,
          fillColor: Color(0XFFE8ECF4),
          suffixIcon: icon,
        ),
      ),
    );
  }
}
