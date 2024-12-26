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
          //todo: semster two
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
                    color: Colors.green),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Semester Two",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),

                    Icon(
                      (Icons.looks_two),
                      size: 70,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),

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
                    color: Colors.purple),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Semester Three",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),

                    Icon(
                      (Icons.looks_3),
                      size: 70,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                    color: Colors.amber),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Semester Four",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),

                    Icon(
                      (Icons.looks_4),
                      size: 70,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),

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
                    color: Colors.blueGrey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Semester Five",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),

                    Icon(
                      (Icons.looks_5),
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
