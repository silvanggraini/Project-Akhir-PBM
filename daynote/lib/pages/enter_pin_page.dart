import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:daynote/models/user.dart';
import 'package:daynote/theme.dart';

class EnterPin extends StatefulWidget {
  const EnterPin({Key? key}) : super(key: key);

  @override
  _EnterPinState createState() => _EnterPinState();
}

class _EnterPinState extends State<EnterPin> {
  late int mypin;
  var listUser = User.getUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter your pin',
                style:
                    myText.copyWith(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  PinCodeFields(
                    keyboardType: TextInputType.number,
                    textStyle: myText.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 20),
                    length: 6,
                    obscureText: true,
                    animationDuration: const Duration(milliseconds: 200),
                    animationCurve: Curves.easeInOut,
                    switchInAnimationCurve: Curves.easeIn,
                    switchOutAnimationCurve: Curves.easeOut,
                    animation: Animations.SlideInDown,
                    enabled: true,
                    onComplete: (output) {
                      mypin = int.parse(output);
                      print(output);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      for (var i = 0; i < listUser.length; i++) {
                        if (mypin == listUser[i].pin) {
                          Navigator.of(context).pushNamed('/activity',
                              arguments: listUser[i].pin);
                          break;
                        }
                      }
                    },
                    child: Text(
                      'Get Started',
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: kBlue,
                        fixedSize: Size(180, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
