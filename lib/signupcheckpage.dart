import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'signuppage.dart';


class LoginSignupPage extends StatefulWidget {
  @override
  _LoginSignupPageState createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login / Sign Up"),
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            SizedBox(height: 70,),
            Text("join over 60 million travellers !", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 100,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(height: 50,
                  minWidth: 130,
                  textColor: Colors.indigo,
                  hoverColor: Colors.black,
                  child: Text("Login"),
                  splashColor: Colors.indigo,
                  elevation: 2,
                  shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo,width: 2)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LoginPage()));
                  },
                ),SizedBox(width: 30,),
                MaterialButton(height: 50,
                  minWidth: 130,
                  hoverColor: Colors.indigo,
                  textColor: Colors.indigo,
                  focusColor: Colors.indigo,
                  child: Text("Sign Up"),
                  splashColor: Colors.indigo,
                  elevation: 2,
                  shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo,width: 2)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignupPage()));
                  },
                )
              ],
            ),
            SizedBox(height: 80,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("By logging in, you agree to our"),
                GestureDetector(
                  onTap: (){
                    },
                  child: Container(
                    child: Text("Terms and Conditions",style: TextStyle(color: Colors.indigo,decoration: TextDecoration.underline),),

                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("and"),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    child: Text("Privacy Policy",style: TextStyle(color: Colors.indigo,decoration: TextDecoration.underline),),

                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
