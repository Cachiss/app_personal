import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final Function changeIndex;
  const BottomBar({super.key, required this.changeIndex});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        NavigationDestination(
          icon: Icon(Icons.work),
          label: 'Mis habilidades',
        ),
        NavigationDestination(
          icon: Icon(Icons.book),
          label: 'Aficiones',
        ),
      ],
      onDestinationSelected: (int index) {
        setState(() => this.index = index);
        widget.changeIndex(index);
      },
      selectedIndex: index,
    );
  }
}
