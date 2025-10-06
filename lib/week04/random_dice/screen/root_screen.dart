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

    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView( // 탭 화면을 보여줄 위젯
        children: renderChildren(),
      ),

      // 아래 탭 내비게이션을 구현하는 매개변수
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  List<Widget> renderChildren() {
    return [];
  }

  // 탭 내비게이션을 구현하는 위젯
  BottomNavigationBar renderBottomNavigation() {
    return BottomNavigationBar(items: []);
  }
}