import 'package:flutter/material.dart';
import 'package:triqui_riverpod/views/pages/home_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Triqui',
      home: HomePage(),
    );
  }
}