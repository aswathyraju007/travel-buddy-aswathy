import 'package:flutter/material.dart';

import 'phoneverification.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: Text("Join over 60 million travellers !",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
                SizedBox(height: 50,),
                Center(
                  child: Container(width: MediaQuery.of(context).size.width/1.5,
                    child: TextFormField(
                      controller: _mobile,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefixIcon: Icon(Icons.phone,color: Colors.indigo,),
                          contentPadding: EdgeInsets.only(left: 15,top: 15),
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(color: Colors.grey,)
                      ),
                    ),
                  ),
                ),
                Center(child: Text("Join over 60 million travellers !",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
                SizedBox(height: 50,),
                Center(
                  child: Container(width: MediaQuery.of(context).size.width/1.5,
                    child: TextFormField(
                      controller: _mobile,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefixIcon: Icon(Icons.person,color: Colors.indigo,),
                          contentPadding: EdgeInsets.only(left: 15,top: 15),
                          hintText: 'Text',
                          hintStyle: TextStyle(color: Colors.grey,)
                      ),
                    ),
                  ),
                ),
                Center(child: Text("Join over 60 million travellers !",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
                SizedBox(height: 50,),
                Center(
                  child: Container(width: MediaQuery.of(context).size.width/1.5,
                    child: TextFormField(
                      controller: _mobile,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefixIcon: Icon(Icons.mail,color: Colors.indigo,),
                          contentPadding: EdgeInsets.only(left: 15,top: 15),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey,)
                      ),
                    ),
                  ),
                ),

                Column(
                  children: <Widget>[
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
                ),SizedBox(height: 30,),
                Center(
                  child: ButtonTheme(
                    height: 40,
                    minWidth: MediaQuery.of(context).size.width/2,
                    child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 0,
                      color: Colors.indigo,
                      icon: Text(""),
                      label: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneVerification()));
                      },
                    ),
                  ),
                )

              ],
            ),
          ),

        ),
      ),
    );
  }
}
