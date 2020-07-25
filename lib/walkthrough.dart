import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'bottomtabs.dart';
import 'package:travelflutter_app/homepage.dart';


class Walkthrogh extends StatefulWidget {
  @override
  _WalkthroghState createState() => _WalkthroghState();
}

class _WalkthroghState extends State<Walkthrogh> {
  final PageController _pageController=PageController(
      initialPage: 0
  );
  final int numpage=3;
  int currentpage = 0 ;

  List<Widget>buildpageindiactor(){
    List<Widget> list=[];
    for(int i=0; i<numpage;i++)
    {
      list.add(i==currentpage ? indicator(true) : indicator(false));
    }
    return list;

  }
  Widget indicator(bool isActive){
    return AnimatedContainer(duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: 5.0,
      width: isActive ? 20.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.indigo : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),);
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(



                  child: Container( padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),

                    alignment: Alignment. bottomRight,
                    child: FlatButton(
                        padding: EdgeInsets.symmetric(vertical: 05,horizontal: 12),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomTabs() ),);
                        },
                        child: Text('Skip',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),)
                    ),
                  ),
                ),
                Container(
                  height: 550.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page)
                    {
                      setState(() {
                        currentpage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 05),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage('images/t2.jpg'),
                                height: 300,
                                alignment: Alignment.center,
                                width: 300,
                              ),
                            ),
                            SizedBox(height: 05,),
                            Text(
                              'DIGITAL MARKETING',style: TextStyle(
                                fontFamily:'balam',
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),
                            ),
                            SizedBox(height: 15.0,),
                            Text('We are you best steps towards a successful careers in Digital Marketing',style: TextStyle(
                              fontFamily: 'jost',fontSize: 16, ),)

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 05),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage('t2.jpg'),
                                height: 300,
                                alignment: Alignment.center,
                                width: 300,
                              ),
                            ),
                            SizedBox(height: 05,),
                            Text(
                              'E-COMMERCE WEB DEVELOPMENT',style: TextStyle(
                                fontFamily:'balam',
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),
                            ),
                            SizedBox(height: 15.0,),
                            Text('Online shopping is getting popular nowadays and it is major neccessity for Business to setup a good e commerce site ',
                              style: TextStyle(
                                fontFamily: 'jost',fontSize: 16, ),
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 05),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage('t3.jpg'),
                                height: 300,
                                alignment: Alignment.center,
                                width: 300,
                              ),
                            ),
                            SizedBox(height: 05,),
                            Text(
                              'WEB APPLICATION DEVELOPMENT',style: TextStyle(
                                fontFamily:'balam',
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),
                            ),
                            SizedBox(height: 10.0,),
                            Text('WebSoulLabs adopt a comprehensive strategy for web development beginning from web coding to web design and content ',
                              style: TextStyle(
                                fontFamily: 'jost',fontSize: 16, ),)

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:buildpageindiactor(),
                ),
                currentpage !=numpage -1 ?Expanded(child: Align(alignment: FractionalOffset.bottomRight,
                  child: FlatButton(onPressed: () {
                    _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                  },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Next",style: TextStyle(color: Colors.black87,fontSize: 20.0),
                        ),
                        SizedBox(width: 09,),
                        Icon(Icons.arrow_forward,color: Colors.black87,size: 26,
                        ),
                      ],
                    ),
                  ),
                ),
                )
                    :Text(''),

              ],
            ),
          ),
        ),
      ) ,
      bottomSheet: currentpage == numpage -1 ? Container(
        height: 50,
        width: double.infinity,
        color: Colors.indigo,
        child: GestureDetector(
          onTap: () {     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomTabs() ),);},
          child: Center(
            child: Padding(padding: EdgeInsets.only(bottom: 08.0),
              child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 19.0,fontWeight: FontWeight.bold),),),
          ),
        ),
      )
          :Text(""),
    );
  }
}











class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
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

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 400,
            width: 600,
            decoration:BoxDecoration(
                shape:BoxShape.rectangle,
                borderRadius:BorderRadius.only(
                  topLeft:Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                )
            ),
            child: Column(
              children: [
                Text('Edit Invoice NO.&Date',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Divider(thickness: 2),
                Text("Invoice Number",style: TextStyle(fontSize: 12,color: Colors.black54),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(9),

                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Icon(Icons.add_circle_outline,color: Colors.indigo,size: 18,),
                    SizedBox(width: 5,),
                    Text("Add Prefix",style: TextStyle(fontSize: 10,color: Colors.indigo),),
                  ],
                ),
                SizedBox(height: 20,),
                Text("Invoice Date",style: TextStyle(fontSize: 12,color: Colors.black54),),
                OutlineButton(
                  onPressed: () {},
                  color: Colors.teal,
                  borderSide: BorderSide(color: Colors.grey),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                  child:  GestureDetector(
                    onTap: () =>_selectDate(context),
                    child: Row(
                      children: [
                        Text(
                          '$_formattedate', style: TextStyle(fontSize: 12),),
                        SizedBox(width: 25,),
                        Icon(Icons.calendar_today, size: 20,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: Colors.indigo),
                    child: Center(child: Text("SET",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),))
                ),
              ],

            ),



          ),
        ),
      ),
    );
  }
}

