import 'package:flutter/material.dart';
import 'package:flutter_cosmos_class/testing.dart';

class BottomOnePage extends StatefulWidget {
  const BottomOnePage({super.key});

  @override
  State<BottomOnePage> createState() => _BottomOnePageState();
}

class _BottomOnePageState extends State<BottomOnePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Testing(),
            ),
          );
        },
        child: Text('Next Page'),
      ),
    );
  }
}
