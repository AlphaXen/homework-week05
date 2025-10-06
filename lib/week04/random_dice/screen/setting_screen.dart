import 'package:myapp/week04/random_dice/const/colors.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final double threshold; // Slider의 현잿값

  final ValueChanged<double> onThresholdChange;

  const SettingScreen({
    Key? key,

    required this.threshold,
    required this.onThresholdChange,
  }) : super(key: key);
}