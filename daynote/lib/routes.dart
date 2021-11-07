import 'package:flutter/material.dart';
import 'package:daynote/pages/activity_page.dart';
import 'package:daynote/pages/add_activity.dart';
import 'package:daynote/pages/add_note_page.dart';
import 'package:daynote/pages/create_pin_page.dart';
import 'package:daynote/pages/enter_pin_page.dart';
import 'package:daynote/pages/note_page.dart';
import 'package:daynote/pages/profile_page.dart';
import 'package:daynote/pages/register_page.dart';
import 'package:daynote/pages/splash_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/splash': (context) => SplashPage(),
  '/register': (context) => RegisterPage(),
  '/create_pin': (context) => CreatePin(),
  '/enter_pin': (context) => EnterPin(),
  '/profile': (context) => ProfilePage(),
  '/note': (context) => NotePage(),
  '/add_note': (context) => AddNotePage(),
  '/activity': (context) => ActivityPage(),
  '/add_activity': (context) => AddActivityPage(),
};
