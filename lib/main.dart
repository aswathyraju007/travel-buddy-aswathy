import 'package:flutter/material.dart';
import 'bottomtabs.dart';
import 'splashsceen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Travel Demo',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
     home: SplashScreen(),
    );
  }
}
