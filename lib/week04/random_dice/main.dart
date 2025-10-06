import 'package:myapp/week04/random_dice/const/colors.dart';
import 'package:myapp/week04/random_dice/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: backgroudColor,
        sliderTheme: SliderThemeData(
          thumbColor: primaryColor,
          activeTickMarkColor: primaryColor,

          inactiveTrackColor: primaryColor.withOpacity(0.3),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor,
          unselectedItemColor: secondaryColor,
          backgroundColor: backgroudColor,
        ),
      ),
      home: HomeScreen(),
    ),
  );
}