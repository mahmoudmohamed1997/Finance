import 'package:finance/constant/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNPar extends StatefulWidget {
  String label;
  IconData icon;
  BottomNPar({super.key, required this.label, required this.icon});

  @override
  State<BottomNPar> createState() => _BottomNParState();
}

class _BottomNParState extends State<BottomNPar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        //  onTap: (){
        //  },

        selectedFontSize: 12.sp,
        iconSize: 21.5.sp,
        elevation: 1,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Appcolors.primaryColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: widget.label),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_chart_outlined,
              ),
              label: widget.label),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
              ),
              label: widget.label),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: widget.label,
          ),
        ],
      ),
    );
  }
}
