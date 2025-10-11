import 'package:myapp/week05/calendar_scheduler/component/main_calendar.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc( // 선택된 날짜를 관리할 변수
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // 시스템 UI 피해서 UI 구현하기
        child: Column( // 달력과 리스트를 세로로 배치
          children: [
            // 미리 작업해둔 달력 위젯 보여주기
            MainCalendar(
              selectedDate: selectedDate, // 선택된 날짜 전달하기
            // 날짜가 선택되었을 때 실행할 함수
              onDaySelected: onDaySelected, // 선택된 날짜
            ),
          ],
        ),
      ),
    );
  }

    void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
      // 날짜가 선택될 때마다 실행할 함수
      setState(() {
        this.selectedDate = selectedDate;
    });
  }
}