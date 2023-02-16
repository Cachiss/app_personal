import 'package:flutter/material.dart';

class appBarWidget extends StatelessWidget {
  const appBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(child: Text('Portafolio')),
      backgroundColor: Colors.black,
    );
  }
}
