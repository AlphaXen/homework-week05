import 'package:myapp/week04/random_dice/const/colors.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final double threshold; // Slider의 현잿값

  // Slider가 변경될 때마다 실행되는 함수
  final ValueChanged<double> onThresholdChange;

  const SettingScreen({
    Key? key,

    // threshold와 onThresholdChange는 SettingScreen에서 입력
    required this.threshold,
    required this.onThresholdChange,
  }) : super(key: key);

  @override
  Widget build
}