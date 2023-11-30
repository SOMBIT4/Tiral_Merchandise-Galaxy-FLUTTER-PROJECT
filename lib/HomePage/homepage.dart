import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:merchandise_galaxy/HomePage/screen1.dart';
import 'package:merchandise_galaxy/HomePage/screen2.dart';
import 'package:merchandise_galaxy/HomePage/screen3.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List Screens =[
    Screen1(),
    Screen2(),
    Payment(),

  ];

  int _selectedIndex =0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,

      backgroundColor:  Colors.white,
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
        Icons.payment,
        color: Colors.greenAccent,
        ),

    ],
    onTap: (index){
      setState(() {
        _selectedIndex=index;
      });
    }
    ),
    body: Screens[_selectedIndex],
    );
  }
}