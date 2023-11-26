import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      
      bottomNavigationBar: CurvedNavigationBar(

      backgroundColor:  Colors.greenAccent,
      color: Colors.black,
      animationDuration: Duration(milliseconds: 250),
      items: [

      Icon(
        Icons.home,
        color: Colors.greenAccent,
        ),
      Icon(
        Icons.favorite,
        color: Colors.greenAccent,
        ),
      Icon(
        Icons.search,
        color: Colors.greenAccent,
        ),
      Icon(
        Icons.settings,
        color: Colors.greenAccent,
        ),

    ]),
    );
  }
}