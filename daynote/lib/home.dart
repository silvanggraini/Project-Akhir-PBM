// import 'dart:html';
import 'dart:ui';

import 'package:diary_activity_app/note.dart';
import 'package:diary_activity_app/profile.dart';
import 'package:diary_activity_app/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:table_calendar/table_calendar.dart';

class HomeApp extends StatefulWidget {
  HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int currentIndex = 0;
  final screens = [
    ScheduleApp(),
    NoteApp(),
    Profile(),
    // Center(child: Text("Home", style: TextStyle(fontSize: 60),),),
    // Center(child: Text("Note", style: TextStyle(fontSize: 60),),),
    // Center(child: Text("Profile", style: TextStyle(fontSize: 60),),),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD8F8E4),
        body:  screens[currentIndex],
        // IndexedStack(
        //   children: screens,
        // ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            // backgroundColor: Colors.red,
            unselectedItemColor: Colors.black45,
            selectedItemColor: Color(0xff58D5DB),
            // selectedIconTheme: ,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_view_day_rounded),
                label: 'Activity',
                backgroundColor: Colors.green
              ),
              BottomNavigationBarItem(
                  // icon: Icon(Icons.home),
                  icon: Icon(Icons.note_rounded),
                  label: 'Note',
                  backgroundColor: Colors.yellow
                  ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  backgroundColor: Colors.red
                  ),
            ]),
      ),
    );
  }
}
