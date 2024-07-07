import 'package:bhagavad_gita_app/Intro_page.dart';
import 'package:bhagavad_gita_app/home_page.dart';
import 'package:bhagavad_gita_app/setting_page.dart';
import 'package:bhagavad_gita_app/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/":(context) => Splashscreen(),
        "home":(context) => Homepage(),
        "intro":(context) => Intropage(),
        "setting":(context) => SettingPage(),
      },
    );
  }
}
