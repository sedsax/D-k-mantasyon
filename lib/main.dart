import 'package:flutter/material.dart';
import 'package:page_view_project/demo_app.dart';
import 'package:page_view_project/program_detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  DemoApp(),
        '/program-detail': (context) => const ProgramDetailScreen(),
      },
    );
  }
}
