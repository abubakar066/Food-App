import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'homepage.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  double height;
  double width;
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff0F6657),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Sign up to",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Fooddoor",
                style: TextStyle(
                  color: Color(0xffFBA808),
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            SingleChildScrollView(
              child: Center(
                child: Container(
                  height: height * 0.6,
                  width: width * 0.95,
                  child: Card(
                    color: Colors.white,
                    elevation: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Text(
                            "Full Name",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Text(
                            "Email or phone number",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: InputBorder.none,
                              suffixIcon: const Icon(
                                Icons.remove_red_eye,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        CheckboxListTile(
                          title: RichText(
                            text: TextSpan(
                                text:
                                    'By creating an account, you agree to our',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13.0),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Terms and Conditions',
                                    style: TextStyle(
                                        color: Color(0xff0F6657),
                                        fontSize: 13.0),
                                  )
                                ]),
                          ),
                          value: checkedValue,
                          onChanged: (newValue) {
                            setState(() {
                              checkedValue = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 15.0,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffFBA808),
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Color(0xffFBA808),
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
