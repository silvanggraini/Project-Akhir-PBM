import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD8F8E4),
        body: ListView(
          // padding: EdgeInsets.fromLTRB(24, top, right, bottom),
          children: [
            Flexible(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/images/arrow.svg",
                          color: Colors.white,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFFFFF)),
                        ),
                        Text("")
                      ],
                    ),
                    Text(
                      "Shahila Nabila",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 300,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/images/imageProfil.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Flexible(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(24),
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: "Name",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(24),
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 24, right: 24, left: 24, bottom: 64),
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.call),
                      labelText: "No. Telepon",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Logout"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shadowColor: Color(0x40130A2E),
                      minimumSize: Size(162, 48),
                      animationDuration: Duration(seconds: 1),
                      elevation: 8,
                      shape: StadiumBorder()),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
