import 'package:app_personal/routes/routes.dart';
import 'package:app_personal/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Routes(index: currentIndex),
        bottomNavigationBar: BottomBar(changeIndex: _onItemTapped));
  }
}
