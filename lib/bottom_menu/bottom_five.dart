import 'package:flutter/material.dart';

class BottomFivePage extends StatefulWidget {
  const BottomFivePage({super.key});

  @override
  State<BottomFivePage> createState() => _BottomFivePageState();
}

class _BottomFivePageState extends State<BottomFivePage> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.five_g_outlined),
                  Text(
                    "Huwawei",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                print("hedfsfs");
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30.0),

                ),
                height: 150,
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(0.2),
                width: 300,
                child: Text("Second Child"),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: isTapped ? 200 : 100,
                height: isTapped ? 200 : 100,
                alignment:
                isTapped ? Alignment.centerLeft : Alignment.bottomRight,
                curve: Curves.easeIn,
                decoration: isTapped
                    ? BoxDecoration(
                    shape: BoxShape.circle, color: Colors.purple)
                    : BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                ),
                child: Text('Hello'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
