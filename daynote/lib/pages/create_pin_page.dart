import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:daynote/theme.dart';

class CreatePin extends StatefulWidget {
  const CreatePin({Key? key}) : super(key: key);

  @override
  _CreatePinState createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {
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
                'Create your pin',
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
                      // Your logic with code
                      print(output);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/enter_pin');
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
