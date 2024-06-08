// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:wastewise/view/user_dashboard.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
 @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    home: const UserDashboard(),
  );
}

}

