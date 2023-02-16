//static linear progress bar with an argument of the value of the progress

import 'package:flutter/material.dart';

class LinearProgress extends StatelessWidget {
  final double value;
  final String language;
  LinearProgress({required this.value, required this.language});

  @override
  Widget build(BuildContext context) {
    // with a static height of the progress bar
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              language,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 20,
            child: LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
