import 'package:flutter/material.dart';
class MyBooking extends StatefulWidget {


  @override
  _MyBookingState createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 2,vsync: this,);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.grey[200],
      appBar: AppBar(backgroundColor: Colors.lightGreenAccent[700],
        title: Text('My Bookings',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: <Widget>[
              TabBar( indicatorWeight: 2,
                 indicatorSize: TabBarIndicatorSize.label,
                 labelColor: Colors.black,
                controller: _tabController,
                  indicator: BoxDecoration(
                      borderRadius:BorderRadius.circular(34),
                  color: Colors.lightGreenAccent[700],
                  border: Border.all(color: Colors.black)),
                tabs: <Widget>[
                  Tab(child: Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                     border: Border.all(color: Colors.black,width: 2),),
                    child:Align(
                     alignment:Alignment.center,
                    child:Text('Booked'),
    ),
    ),
    ),
                  Tab(child: Container(
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   border: Border.all(color: Colors.black,width: 2),),
                   child:Align(
                   alignment:Alignment.center,
                   child:Text('Cancelled'),
             ),
    ),
                  ),
                ]
              ),

     Expanded(
    child: TabBarView(
    controller: _tabController,
    children: <Widget>[
        Center(
             child: Text('Booked',style: TextStyle(fontSize: 20),),
              ),Center(
               child: Text('Cancelled',style: TextStyle(fontSize: 20),),
              )
             ],
            ),
         )
        ],
     ),
    ),
      )
    );
  }
}