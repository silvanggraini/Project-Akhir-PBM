import 'package:diary_activity_app/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'dart:html';

void main() {
  runApp(MyApp());
  // bool _passwordVisible = false;
}

class MyApp extends StatefulWidget {
  // final bool _passwordVisible;
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _passwordVisible = false;

  @override
  // void initState() {
  //   _passwordVisible = false;
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xffD8F8E4),
          body: ListView(
            padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
            children: [
              Flexible(
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Color(0xffF7E9DE),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: SvgPicture.asset("assets/images/logo.svg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
                        child: Text(
                          "Create a new account",
                          style: TextStyle(
                            color: Color(0xff114556),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(8, 6, 6, 6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'Enter your email',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter password',
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Theme.of(context).primaryColorDark,
                                  ))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16, bottom: 100),
                        padding: EdgeInsets.fromLTRB(20, 6, 6, 6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter konfirmasi password',
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Theme.of(context).primaryColorDark,
                                  ))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  children: <Widget>[
                    Builder(
                      builder: (context) => Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeApp();
                            }));
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff58D5DB),
                            shadowColor: Color(0x40130A2E),
                            minimumSize: Size(162, 48),
                            animationDuration: Duration(seconds: 1),
                            elevation: 8,
                            shape: StadiumBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Already have an account ?"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    style: TextButton.styleFrom(primary: Color(0xff114556)),
                  ),
                ],
              ))
            ],
          )
          // Column(

          // ),
          ),
    );
  }
}
