import 'package:day_1_ui/screens/home_screen.dart';
import 'package:day_1_ui/screens/profile_screen.dart';
import 'package:day_1_ui/screens/song_screen.dart';
import 'package:flutter/material.dart';

import 'screens/comment_screen.dart';

void main() {
  //hi i am tushar working on another branch
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'First Ui Demo',
        darkTheme: ThemeData(brightness: Brightness.dark),
        home: HomeScreen());
  }
}
