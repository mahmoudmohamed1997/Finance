import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrx_charts/mrx_charts.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 144.h,
        width: double.infinity,
        child: Chart(
          layers: [
            ChartAxisLayer(
              settings: ChartAxisSettings(
                x: ChartAxisSettingsAxis(
                  frequency: 1.0,
                  max: 13.0,
                  min: 7.0,
                  textStyle: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 10.0,
                  ),
                ),
                y: ChartAxisSettingsAxis(
                  frequency: 100.0,
                  max: 300.0,
                  min: 0.0,
                  textStyle: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 10.0,
                  ),
                ),
              ),
              labelX: (value) => value.toInt().toString(),
              labelY: (value) => value.toInt().toString(),
            ),
            ChartBarLayer(
              items: List.generate(
                13 - 7 + 1,
                (index) => ChartBarDataItem(
                  color: const Color(0xFF8043F9),
                  value: Random().nextInt(280) + 20,
                  x: index.toDouble() + 7,
                ),
              ),
              settings: const ChartBarSettings(
                thickness: 8.0,
                radius: BorderRadius.all(Radius.circular(4.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
