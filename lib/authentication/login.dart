


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:gymapp/authentication/signup.dart';
import 'package:gymapp/models/constants.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String videoURL = "https://www.youtube.com/watch?v=bxu7d1uZ4wI";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(mainColor),
      appBar: AppBar(title: Text('Login'),
        backgroundColor: Color(mainColor),),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 10,
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
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 0),
                      ),
                    ),
                  ),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                height:50,
                child: Center(
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock,color: Color(primareyColor),),
                      hintStyle: TextStyle(color: Colors.grey,),
                      filled: true,
                      fillColor: Color(whitness),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            width: 0),
                      ),
                    ),
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 10,
              height: 40,
              child: RaisedButton(
                child: Text(
                  "Sign in",
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
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: 1),
              child: Center(
                child: Text('-OR-',style: TextStyle(fontSize: 20,color: Color(primareyColor)),),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 45,
              child: SignInButton(
                Buttons.Apple,
                onPressed: ()
                {

                },

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 45,
              child: SignInButton(
                Buttons.Facebook,
                onPressed: ()
                {

                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),

              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(top: 10),
              child: SignInButton(
                Buttons.Google,
                onPressed: ()
                {

                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
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

  Widget goToSignUp() {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
    TextStyle linkStyle = TextStyle(color: Color(primareyColor));
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: "Don't have an account?"),
          TextSpan(
              text:"Sign Up?",
              style: linkStyle,
              recognizer: TapGestureRecognizer()..onTap = ()
              {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp()));
              }
          ),
        ],
      ),
    );
  }

}
