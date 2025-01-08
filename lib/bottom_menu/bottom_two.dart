import 'package:flutter/material.dart';

class BottomTwoPage extends StatefulWidget {
  const BottomTwoPage({super.key});

  @override
  State<BottomTwoPage> createState() => _BottomTwoPageState();
}

class _BottomTwoPageState extends State<BottomTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          30,
          (index) {
            return index % 2 == 0
                ? Image.asset("assets/images/ronin.jpg")
                : Card(
                    color: index % 2 != 0 ? Colors.grey : Colors.green,
                    child: Center(
                      child: Text(
                        index.toString(),
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
