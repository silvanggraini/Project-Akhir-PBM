// import 'dart:html';
import 'dart:ui';

import 'package:diary_activity_app/note.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleApp extends StatefulWidget {
  ScheduleApp({Key? key}) : super(key: key);

  @override
  _ScheduleAppState createState() => _ScheduleAppState();
}

class _ScheduleAppState extends State<ScheduleApp> {
  // int currentIndex = 0;
  // final screen = [
  //   ScheduleApp(),
  //   NoteApp(),
  //   ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD8F8E4),
        body: ListView(
          padding: EdgeInsets.fromLTRB(20, 70, 20, 30),
          children: [
            Flexible(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff114556)),
                      ),
                      Text(
                        "Welcome shahila",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/images/imageProfil.jpg"),
                  )
                  // SizedBox(
                  //     width: 50,
                  //     height: 50,
                  //     child: Image.asset("assets/images/imageProfi.jpg"))
                ],
              ),
            )),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'November 2021',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Container(
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.2),
                            spreadRadius: 7,
                            blurRadius: 32,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: TableCalendar(
                        focusedDay: DateTime.now(),
                        firstDay: DateTime(1990),
                        lastDay: DateTime(2030)))
              ],
            )),
            Flexible(
                child: Container(
              padding:
                  EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
              margin: EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.2),
                      spreadRadius: 7,
                      blurRadius: 32,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Activity',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff114556)),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Icon(Icons.add_rounded, color: Colors.red),
                            Text(
                              "Add",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xff58D5DB),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Class Algoritma",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff114556)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Presantation the project with team",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff114556)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xff114556),
                              size: 16,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 80,
                              height: 36,
                              margin: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  border: Border.all(
                                    color: Color(0xff114556),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.edit_rounded,
                                      color: Color(0xff114556)),
                                  Text(
                                    "Edit",
                                    style: TextStyle(color: Color(0xff114556)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 36,
                              margin: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "Finish",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xff58D5DB),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Class Algoritma",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff114556)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Presantation the project with team",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff114556)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xff114556),
                              size: 16,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 80,
                              height: 36,
                              margin: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  border: Border.all(
                                    color: Color(0xff114556),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.edit_rounded,
                                      color: Color(0xff114556)),
                                  Text(
                                    "Edit",
                                    style: TextStyle(color: Color(0xff114556)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 36,
                              margin: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "Finish",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //     type: BottomNavigationBarType.fixed,
        //     currentIndex: currentIndex,
        //     unselectedItemColor: Colors.black45,
        //     selectedItemColor: Color(0xff58D5DB),
        //     // selectedIconTheme: ,
        //     onTap: (index) => setState(() => currentIndex = index),
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: SvgPicture.asset('assets/images/scheduleBiru.svg'),
        //         label: 'Activity',
        //       ),
        //       BottomNavigationBarItem(
        //           // icon: Icon(Icons.home),
        //           icon: SvgPicture.asset('assets/images/noteBiru.svg'),
        //           label: 'Note'),
        //       BottomNavigationBarItem(
        //           icon: SvgPicture.asset('assets/images/ProfileBiru.svg'),
        //           label: 'Profile'),
        //     ]),
      ),
    );
  }
}
