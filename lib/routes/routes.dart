import 'package:flutter/material.dart';

import 'package:app_personal/pages/home_page.dart';
import 'package:app_personal/pages/skills_page.dart';
import 'package:app_personal/pages/hobbies_page.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomePage(),
      const SkillsPage(),
      const HobbiesPage(),
    ];
    return pages[index];
  }
}
