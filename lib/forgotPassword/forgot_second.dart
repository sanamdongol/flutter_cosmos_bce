import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_cosmos_class/forgotPassword/forgot_three.dart';

class ForgotSecondPage extends StatefulWidget {
  const ForgotSecondPage({super.key});

  @override
  State<ForgotSecondPage> createState() => _ForgotSecondPageState();
}

class _ForgotSecondPageState extends State<ForgotSecondPage> {
  int _seconds = 5;
  Timer? timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer?.cancel();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'WIDGET COMPANY',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 33.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(child: Text('Get it done right away')),
            SizedBox(height: 60.0),
            Text(
              'Check you mail',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              ('We have sent password recover instructions to your mail.'),
            ),
            SizedBox(height: 20),
            //Clcik event using GestureDetector
            GestureDetector(
              child: Text('Email Ayena'),
              onTap: () {
                print("I am gesture detector");
              },
            ),
            SizedBox(height: 20),
            //Clcik event using InkWell
            InkWell(
              child: Text('Email pheri pathau'),
              onTap: () {
                print("I am inkwell detector");
              },
            ),

            Text('Your timer is $_seconds '),
          ],
        ),
      ),
    );
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        if (_seconds > 0) {
          _seconds--;
          print(_seconds);
        } else {
          //TODO:  Go to next page
          //add logic after timer is completed
          timer?.cancel();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ForgotThreePage(),
            ),
          );
        }
      });
    });
  }
}
