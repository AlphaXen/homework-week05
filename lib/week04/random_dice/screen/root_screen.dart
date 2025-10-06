import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with
TickerProviderStateMixin{ // TickerProviderStateMixin 사용하기
  TabController? controller; // 사용할 TabController 선언

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 2, vsync: this);  // 컨트롤러 초기화하기
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView( // 탭 화면을 보여줄 위젯
        controller: controller, // 컨트롤러 등록하기
        children: renderChildren(),
      ),

      // 아래 탭 내비게이션을 구현하는 매개변수
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  List<Widget> renderChildren() {
    return [
      Container( // 홈 탭
        child: Center(
          child: Text(
            'Tab 1',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),

      Container( // 설정 스크린 탭
        child: Center(
          child: Text(
            'Tab 2',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ];
  }

  // 탭 내비게이션을 구현하는 위젯
  BottomNavigationBar renderBottomNavigation() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem( // 하단 탭바의 각 버튼을 구현
          icon: Icon(
            Icons.edgesensor_high_outlined,
          ),
          label: '주사위',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: '설정'
        ),
      ]);
  }
}