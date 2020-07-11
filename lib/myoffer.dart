import 'package:flutter/material.dart';
class MyOffer extends StatefulWidget {
  @override
  _MyOfferState createState() => _MyOfferState();
}

class _MyOfferState extends State<MyOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent[700],
        title: Text('Offers',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: (
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                        child: Image.asset('images/t3.jpg',fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height:MediaQuery.of(context).size.height/4,
                      width: MediaQuery.of(context).size.width/1,
                      child: Card(elevation: 2,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('images/map.png',fit: BoxFit.fill),
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
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 4),
              child: Container(
                height: MediaQuery.of(context).size.height/3.6,
                width:MediaQuery.of(context).size.width/1,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 2,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('App users save up to Rs-400',style: TextStyle(color: Colors.lightGreenAccent[700],fontSize: 17),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('App users - Up to Rs-400 off',style: TextStyle(color: Colors.black54,fontSize: 13),),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Container(
                            width: MediaQuery.of(context).size.width/6,
                            height: MediaQuery.of(context).size.height/145,
                            color: Colors.lightGreenAccent[700],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('- Additional cashbacks on wallets\n- Login to apply | First time App users',style: TextStyle(color: Colors.black54),),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Container(
                            width: MediaQuery.of(context).size.width/9,
                            height:1,
                            color: Colors.black54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('More Detils',style: TextStyle(color: Colors.lightGreenAccent[700]),),
                        ),


                      ],

                    ),
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 4),
              child: Container(
                height: MediaQuery.of(context).size.height/3.6,
                width:MediaQuery.of(context).size.width/1,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 2,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('Privilage Member Benefits',style: TextStyle(color: Colors.lightGreenAccent[700],fontSize: 17),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('UpTo 5% off',style: TextStyle(color: Colors.black54,fontSize: 13),),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Container(
                            width: MediaQuery.of(context).size.width/6,
                            height: MediaQuery.of(context).size.height/145,
                            color: Colors.lightGreenAccent[700],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('- Only fo registeed Users\n- Travel more,gain more',style: TextStyle(color: Colors.black54),),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Container(
                            width: MediaQuery.of(context).size.width/9,
                            height:1,
                            color: Colors.black54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('More Detils',style: TextStyle(color: Colors.lightGreenAccent[700]),),
                        ),


                      ],

                    ),
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 4),
              child: Container(
                height: MediaQuery.of(context).size.height/3.6,
                width:MediaQuery.of(context).size.width/1,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 2,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('Vis offer for booking above/n Rs 1000',style: TextStyle(color: Colors.lightGreenAccent[700],fontSize: 17),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('App users - Up to Rs-400 off',style: TextStyle(color: Colors.black54,fontSize: 13),),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Container(
                            width: MediaQuery.of(context).size.width/6,
                            height: MediaQuery.of(context).size.height/145,
                            color: Colors.lightGreenAccent[700],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('- Additional cashbacks on wallets\n- Login to apply | First time App users',style: TextStyle(color: Colors.black54),),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Container(
                            width: MediaQuery.of(context).size.width/9,
                            height:1,
                            color: Colors.black54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('More Detils',style: TextStyle(color: Colors.lightGreenAccent[700]),),
                        ),


                      ],

                    ),
                  ),

                ),
              ),
            ), Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 4),
              child: Container(
                height: MediaQuery.of(context).size.height/3.6,
                width:MediaQuery.of(context).size.width/1,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 2,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('App users save up to Rs-400',style: TextStyle(color: Colors.lightGreenAccent[700],fontSize: 17),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('App users - Up to Rs-400 off',style: TextStyle(color: Colors.black54,fontSize: 13),),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Container(
                            width: MediaQuery.of(context).size.width/6,
                            height: MediaQuery.of(context).size.height/145,
                            color: Colors.lightGreenAccent[700],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('- Additional cashbacks on wallets\n- Login to apply | First time App users',style: TextStyle(color: Colors.black54),),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Container(
                            width: MediaQuery.of(context).size.width/9,
                            height:1,
                            color: Colors.black54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal:9),
                          child: Text('More Detils',style: TextStyle(color: Colors.lightGreenAccent[700]),),
                        ),


                      ],

                    ),
                  ),

                ),
              ),
            )
          ],
        ),
      )
      ),
    );
  }
}
