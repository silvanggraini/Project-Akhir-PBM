import 'package:flutter/material.dart';
import 'package:daynote/models/user.dart';
import 'package:daynote/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _pass = TextEditingController();
  var check;
  var listUser = User.getUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgorund,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset(
                  'assets/images/Logo.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Create a new account',
              style: myText.copyWith(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username tidak boleh kosong';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Email",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(
                          Icons.mail,
                          color: kText,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    TextFormField(
                      controller: _name,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(
                          Icons.lock,
                          color: kText,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Konfirmasi password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(
                          Icons.lock,
                          color: kText,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        onPressed:
                        () {
                          if (_formKey.currentState!.validate()) {
                            return null;
                          }
                        };
                      },
                      child: Text(
                        'Get Started',
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: kBlue,
                          fixedSize: Size(180, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/enter_pin');
                      },
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Already have an account? ',
                            style:
                                myText.copyWith(fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: 'Login',
                            style: myText.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic))
                      ])),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
