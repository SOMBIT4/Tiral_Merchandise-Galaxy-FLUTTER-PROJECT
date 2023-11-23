import 'package:flutter/material.dart';
import 'package:flutter_application_3/res/app_assets/app_assets.dart';
import 'package:flutter_application_3/res/colors/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 50),
        child: Column(children: [
          Row(
            children: [
              Image.asset(
                AppAssets.menuIcon,
                width: 40,
                fit: BoxFit.contain,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
