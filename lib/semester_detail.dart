import 'package:flutter/material.dart';

class SemesterDetail extends StatefulWidget {
  const SemesterDetail({super.key});

  @override
  State<SemesterDetail> createState() => _SemesterDetailState();
}

class _SemesterDetailState extends State<SemesterDetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Semester Record'),
          bottom: TabBar(
            tabs: [
              // Column(children: [ Icon(Icons.looks_one_outlined),Text('Hello')],),
              Icon(Icons.looks_one_outlined),
              Icon(Icons.looks_two_outlined),
              Icon(Icons.looks_3_outlined),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Icon(Icons.account_circle),
            ),
            Center(
              child: Icon(Icons.account_circle),
            ),
            Center(
              child: Icon(Icons.alarm),
            )
          ],
        ),
      ),
    );
  }
}
