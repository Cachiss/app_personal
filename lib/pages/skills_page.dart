import 'package:flutter/material.dart';

import 'package:app_personal/widgets/linearProgress.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          const Text(
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              'Habilidades'),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: LinearProgress(
              value: 0.5,
              language: 'Ingles-Intermedio (B1)',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: LinearProgress(
              value: 0.7,
              language: 'JavaScript-Intermedio alto',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: LinearProgress(
              value: 0.5,
              language: 'React-intermedio',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: LinearProgress(
              value: 0.3,
              language: 'PHP-principiante',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: LinearProgress(
              value: 0.2,
              language: 'Laravel-principiante',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: LinearProgress(
              value: 0.5,
              language: 'Node.js-intermedio',
            ),
          ),
        ]),
      ),
    );
  }
}
