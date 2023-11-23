import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(215, 152, 255, 152)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
