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
        minimum: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 45),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppAssets.menuIcon,
                  width: 42,
                  fit: BoxFit.contain,
                ),
                Container(
                  height: 40,
                  width: 44,
                  //  margin: EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                // Expanded(child: ),
                Expanded(
                  child: Container(
                    height: 34,
                    //width: 50,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.shadowColor,
                          spreadRadius: 2.2,
                          blurRadius: 5,
                          offset: Offset(-3, 1),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        prefixIcon: Image.asset(
                          AppAssets.searchIcon,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 42,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
