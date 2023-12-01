import 'package:flutter/material.dart';
import 'package:flutter_application_3/re_useable/showProduct.dart';
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
      body: ListView(
        children: [
          SafeArea(
            minimum:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(
                  height: 20,
                ),

                // SizedBox(
                //   height: 200,
                //   child: ListView(
                //     children: [
                //       Padding(
                //         padding: EdgeInsets.all(5),
                //         child: Container(
                //           height: 200,
                //           color: Colors.blue,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 200,
                //   child: ListView(
                //     children: [
                //       Padding(
                //         padding: EdgeInsets.all(5),
                //         child: Container(
                //           height: 200,
                //           color: Colors.blue,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 200,
                //   child: ListView(
                //     children: [
                //       Padding(
                //         padding: EdgeInsets.all(5),
                //         child: Container(
                //           height: 200,
                //           color: Colors.blue,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 200,
                //   child: ListView(
                //     children: [
                //       Padding(
                //         padding: EdgeInsets.all(5),
                //         child: Container(
                //           height: 200,
                //           color: Colors.blue,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                Text(
                  'Product',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 262,
                  child: ListView.separated(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                    itemBuilder: (context, index) {
                      return const ProductListTile();
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Product',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 262,
                  child: ListView.separated(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                    itemBuilder: (context, index) {
                      return const ProductListTile();
                    },
                  ),
                ),
                Text(
                  'Product',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 262,
                  child: ListView.separated(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                    itemBuilder: (context, index) {
                      return const ProductListTile();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
