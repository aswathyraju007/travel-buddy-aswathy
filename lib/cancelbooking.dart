import 'package:flutter/material.dart';
class CancelBooking extends StatefulWidget {
  @override
  _CancelBookingState createState() => _CancelBookingState();
}

class _CancelBookingState extends State<CancelBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Bus Tickets',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
