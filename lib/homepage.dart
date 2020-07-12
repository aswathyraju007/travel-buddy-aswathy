import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   DateTime _currentdate = new DateTime.now();
   final tmrw = DateTime.now().add(Duration(days: 1));

        _tmrDate(){
          setState(() {
            _currentdate = tmrw;
          });
   }

   Future<Null> _selectDate(BuildContext context)async{
     final DateTime picked = await showDatePicker(
         context: context,
         initialDate: _currentdate,
         firstDate:DateTime(2000),
         lastDate:DateTime (2022),
     );
     if(picked != null){
       setState(() {
         _currentdate = picked;
       });
     }

   }
  @override
  Widget build(BuildContext context) {
    String _formattedate = new DateFormat.yMMMd().format(_currentdate);
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Bus Tickets',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8, horizontal: 4),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 1,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.location_on,
                                    color: Colors.black54,),
                                  //focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                                  //),
                                  //enabledBorder:
                                  hintText: 'Source',
                                  //labelText: 'sun-28-2020',
                                  hintStyle: TextStyle(
                                      color: Colors.black54
                                  )
                              ),
                            ),
                            Divider(thickness: 2,),
                            TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.location_on,
                                    color: Colors.black54,),
                                  //focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                                  // ),
                                  //enabledBorder:
                                  hintText: 'Destination',
                                  //labelText: 'sun-28-2020',
                                  hintStyle: TextStyle(
                                      color: Colors.black54
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 1, horizontal: 4),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 1,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 12),
                            child: GestureDetector(
                              onTap: () =>_selectDate(context),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Icon(Icons.calendar_today, size: 27,),
                                  SizedBox(width: 17,),
                                  Text(
                                    '$_formattedate', style: TextStyle(fontSize: 18),)
                                ],
                              ),
                            ),
                          ),SizedBox(width: 40,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors
                                          .indigo),),
                                    onPressed: () {_tmrDate();} ,
                                    //color: Colors.lightGreenAccent[700],
                                    textColor: Colors.white,
                                    child: Text('TOMORROW', style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ),

                              ],
                            ),

                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height:12,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:MediaQuery.of(context).size.height/15,
                    width:MediaQuery.of(context).size.width/1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigo,
                    ),
                    child: Center(child: Text('SEARCH',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.center,)),
                  ),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 2,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width/1,
                    //color: Colors.indigo,
                    child: Image.asset('images/t1.jpg',fit: BoxFit.fill,),
                  ),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 2,),
                SizedBox(height: 4,),
                Text('Best Deals & Offers',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),),
                SizedBox(height:5,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height:MediaQuery.of(context).size.height/4,
                          width: MediaQuery.of(context).size.width/1,
                          child: Card(elevation: 2,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: Image.asset('images/t2.jpg',fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height:MediaQuery.of(context).size.height/4,
                          width: MediaQuery.of(context).size.width/1,
                          child: Card(elevation: 2,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: Image.asset('images/t2.jpg',fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height:MediaQuery.of(context).size.height/4,
                          width: MediaQuery.of(context).size.width/1,
                          child: Card(elevation: 2,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: Image.asset('images/map.png',fit: BoxFit.fill,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 2,),
                SizedBox(height: 4,),
              ]
          ),
        )
    );
  }
}








