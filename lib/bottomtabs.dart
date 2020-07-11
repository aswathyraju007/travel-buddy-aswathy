import 'package:flutter/material.dart';
import 'homepage.dart';
import 'myoffer.dart';
import 'mybooking.dart';
import 'mychat.dart';
import 'myaccound.dart';
class BottomTabs extends StatefulWidget {
  @override
  _bottomtabsState createState() => _bottomtabsState();
}

class _bottomtabsState extends State<BottomTabs> {
  int _currentindex = 0;
  final List<Widget> _children = [
    HomePage(),
    MyOffer(),
    MyBooking(),
    MyChat(),
    MyAccount()
  ];
  void onTappedBars(int index){
    setState(() {
      _currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBars,
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text("Home",),
              backgroundColor: Colors.lightGreenAccent[700]
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard,),
              title: Text("Offers",),
              backgroundColor: Colors.lightGreenAccent[700]
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.toc,),
            title: Text("My Booking"),
            backgroundColor: Colors.lightGreenAccent[700],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,),
            title: Text("My Chat"),
            backgroundColor: Colors.lightGreenAccent[700],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,),
            title: Text("My Account"),
            backgroundColor: Colors.lightGreenAccent[700],
          ),
        ],
      ),
    );
  }
}
