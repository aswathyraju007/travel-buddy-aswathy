import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'cancelbooking.dart';
class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
//      appBar: AppBar(
//        backgroundColor: Colors.lightGreenAccent[700],
//        title: Text('My Account',
//          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//      ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0,22,0,0),
            child: Container(
              color: Colors.indigo,
              height: MediaQuery.of(context).size.height/6,
              width: MediaQuery.of(context).size.width/1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  child: ClipOval(child:Image.asset("images/myaccount.jpg"),
                  ),
                ),
                SizedBox(width: 20,),
                Text('LOGIN /',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 5.0,),
                Text('SIGNUP',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
              ),
            ),
            ),
          ),
          Card(
            child: Container(
              height: MediaQuery.of(context).size.height/1,
              child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('My Bookings',style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.cancel),
                  title: Text('Cancel Booking',style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>CancelBooking()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text('Feedback',style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.pages),
                  title: Text('Terms & Conditions',style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.featured_play_list),
                  title: Text('Privacy & Policy',style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.add_comment),
                  title: Text('about Us',style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text('Contct Us',style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text('Logout',style: TextStyle(color:Colors.black),),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                ),
              ],
            ),
            ),
          )
        ],
      ),
    ),
    );
  }
}
