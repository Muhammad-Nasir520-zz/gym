

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gymapp/authentication/login.dart';
import 'package:gymapp/models/constants.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List gender=["Male","Female","Other"];

  String select;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(mainColor),
      appBar: AppBar(title: Text('Sign Up'),
        backgroundColor: Color(mainColor),),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),

        child: ListView(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                height: 50,
                child: Center(
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person_outline,color: Color(primareyColor),),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(whitness),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 2),
                      ),
                    ),
                  ),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                height: 50,
                child: Center(
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      prefixIcon: Icon(Icons.lock,color: Color(primareyColor),),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(whitness),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 2),
                      ),
                    ),
                  ),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                height: 50,
                child: Center(
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock_outline,color: Color(primareyColor),),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(whitness),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 2),
                      ),
                    ),
                  ),
                )
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10,right: 5),
                    height: 50,
                    child: Center(
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Age',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Color(whitness),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                            BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color(primareyColor), width: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10,left: 5,right: 5),
                    height: 50,
                    child: Center(
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'height',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Color(whitness),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                            BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color(primareyColor), width: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10,left:5,),
                    height: 50,
                    child: Center(
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Weight',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Color(whitness),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                            BorderSide(color: Colors.white, width: 0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color(primareyColor), width: 0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text("Gender:",style: TextStyle(color: Color(primareyColor),fontSize: 20),),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  addRadioButton(0, 'Male'),
                  addRadioButton(1, 'Female'),
                  addRadioButton(2, 'Other')
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 10,
              height: 40,
              child: RaisedButton(
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Color(primareyColor),
                onPressed: ()  {

                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                child: Center(
                  child: goToSignUp(),
                )
            ),

          ],
        ),
      ),
    );
  }
  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Theme.of(context).primaryColor,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value){
            setState(() {
              print(value);
              select=value;
            });
          },
        ),
        Text(title,style: TextStyle(color: Colors.white),)
      ],
    );
  }
  Widget goToSignUp() {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
    TextStyle linkStyle = TextStyle(color: Color(primareyColor),fontSize: 20);
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: "Already have an account?",style: TextStyle(color: Colors.white)),
          TextSpan(
              text:" Sign In?",
              style: linkStyle,
              recognizer: TapGestureRecognizer()..onTap = ()
              {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login()));
              }
          ),
        ],
      ),
    );
  }
}
