import 'package:flutter/material.dart';
import 'package:flutter_cosmos_class/semester_detail.dart';

class BottomFourPage extends StatefulWidget {
  const BottomFourPage({super.key});

  @override
  State<BottomFourPage> createState() => _BottomFourPageState();
}

class _BottomFourPageState extends State<BottomFourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                //TODO: write page changing code here
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SemesterDetail(),
                    ));
              },
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Semester One",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      (Icons.looks_one),
                      size: 70,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
