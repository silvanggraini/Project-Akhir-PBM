import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NoteApp extends StatefulWidget {
  NoteApp({Key? key}) : super(key: key);

  @override
  _NoteAppState createState() => _NoteAppState();
}

class _NoteAppState extends State<NoteApp> {
  final List<Map<String, dynamic>> listNote = [
    {
      "name": "Dear Diary",
      "Date": "30 juli 2021",
    },
    {
      "name": "I'm Happy",
      "Date": "25 juli 2021",
    },
    {
      "name": "Today was a long day",
      "Date": "17 juli 2021",
    },
    {
      "name": "Hello! first!",
      "Date": "16 juli 2021",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD8F8E4),
        body: ListView(
          padding: EdgeInsets.fromLTRB(24, 50, 24, 60),
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/images/arrow.svg"),
                    Text(
                      "Note",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
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
              ),
            ),
            Flexible(
                child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(top: 16, bottom: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Dear Diary", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54
                          ),),
                          Text("30 Juli 2021", style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45
                          ),)
                        ],
                      ),
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(top: 16, bottom: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("I'm Happy", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54
                          ),),
                          Text("25 Juli 2021", style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45
                          ),)
                        ],
                      ),
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(top: 16, bottom: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Today was a long day", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54
                          ),),
                          Text("18 Juli 2021", style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45
                          ),)
                        ],
                      ),
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(top: 16, bottom: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Hello! First!", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54
                          ),),
                          Text("16 Juli 2021", style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45
                          ),)
                        ],
                      ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
