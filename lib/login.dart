import 'dart:io';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text(""),
          actions: <Widget>[
            TextButton(
              // style: ButtonStyle(
              // backgroundColor: MaterialStateProperty.all(Colors.grey[400]),
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(2))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const home()));
              },
              child:
                  const Text("Skip", style: TextStyle(color: Colors.blueGrey)),
            ),
          ],
          backgroundColor: Colors.white30,
          elevation: 0,
        ),
        body: Column(children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                Text(
                  "Login Or Register",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                Text(
                    "for better experiencce ,Order Tracking & Regular updatess",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            width: 399,
            child: Padding(
              padding: const EdgeInsets.only(left: 26, right: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[400]),
                ),
                onPressed: () {},
                child: Text(
                  'Send Otp',
                  style: TextStyle(fontSize: 18),
                ),
              )),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: [
                Text(
                  "By Continuing I agree with the",
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  ' Privacy Policy and Terms and Conditions',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          )
        ]));
  }
}
