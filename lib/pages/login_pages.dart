import 'package:flutter/material.dart';
import 'package:merchendise_galaxy/components/my_texfield.dart';
import 'package:merchendise_galaxy/components/my_textfield1.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//text editing controllers
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),

              const Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 25),
              //username field
              Mytextfield(
                controller: usernamecontroller,
                hintText: 'Username or Gmail address',
                obscureText: false,
              ),

              /*  Container(
                child: Mytextfield(),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 15),
                        blurRadius: 10.0,
                        //   spreadRadius: 2.0,
                      ),
                    ]),
              ),
*/
              const SizedBox(height: 25),
              //password text field

              Mytextfield1(
                controller: passwordcontroller,
                hintText: 'Password',
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_off,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
