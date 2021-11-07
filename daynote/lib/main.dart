import 'package:flutter/material.dart';
import 'package:daynote/pages/activity_page.dart';
import 'package:daynote/pages/add_activity.dart';
import 'package:daynote/pages/add_note_page.dart';
import 'package:daynote/pages/note_page.dart';
import 'package:daynote/pages/splash_page.dart';
import 'package:daynote/routes.dart';
import 'package:daynote/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      theme: theme(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
