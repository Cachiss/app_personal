import 'package:app_personal/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//pages
import 'package:app_personal/pages/home_page.dart';
import 'package:app_personal/pages/skills_page.dart';
import 'package:app_personal/pages/hobbies_page.dart';

//routes
//custom widgets
import 'package:app_personal/widgets/appBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Marcos Jesús Camacho Ramírez',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
      ],
      home: MainPage(),
      theme: ThemeData(primaryColor: Colors.black87),
    );
  }
}
