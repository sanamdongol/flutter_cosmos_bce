import 'package:flutter/material.dart';

class ArithmeticMath extends StatefulWidget {
  const ArithmeticMath({super.key});

  @override
  State<ArithmeticMath> createState() => _ArithmeticMathState();
}

class _ArithmeticMathState extends State<ArithmeticMath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            title: Text("Unit 1"),
            children: [
              Text("1. Java Architecture, Class paths, Sample Program"),
              Text("2. Classes, Objects, Constructors"),
              Text("3. Classes 1 , Objects, Constructors"),
              Text("4. Classes 2, Objects, Constructors"),
              Text("5. Classes 3, Objects, Constructors"),
              Text("6. Classes 4, Objects, Constructors"),
            ],
          ),
          ExpansionTile(
            title:
                Text("Unit I", style: TextStyle(fontWeight: FontWeight.bold)),
            children: [
              Container(
                padding: EdgeInsets.only(left: 10.0),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("1. Java Architecture, Class paths, Sample Program"),
                    Text("2. Classes, Objects, Constructors"),
                    Text("3. Classes 1 , Objects, Constructors"),
                    Text("4. Classes 2, Objects, Constructors"),
                    Text("5. Classes 3, Objects, Constructors"),
                    Text("6. Classes 4, Objects, Constructors"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
