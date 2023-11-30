import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('Favorite',style:  TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),),),
    );
  }
}