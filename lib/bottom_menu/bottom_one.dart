import 'package:flutter/material.dart';

class BottomOnePage extends StatefulWidget {
  const BottomOnePage({super.key});

  @override
  State<BottomOnePage> createState() => _BottomOnePageState();
}

class _BottomOnePageState extends State<BottomOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Routine(),
              SizedBox(height: 10),
              Text('Subject',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SubjectList(),

            ],
          ),
        ),
      ),
    );
  }
}

class SubjectList extends StatelessWidget {
  const SubjectList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SubjectView("AM", Colors.blueGrey),
          SubjectView("M1", Colors.orange),
          SubjectView("PST", Colors.yellow),
          SubjectView(
            "MAD",
            Colors.green,
          ),
          SubjectView("CHE", Colors.purple),
          SubjectView("RF", Colors.white30),
        ],
      ),
    );
  }
}

class SubjectView extends StatelessWidget {
  String subjectInitial;
  Color color;

  SubjectView(this.subjectInitial, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black,
        child: Text(subjectInitial, style: TextStyle(color: color)),
      ),
    );
  }
}

class Routine extends StatelessWidget {
  const Routine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          RoutineView(
              "Sunday",
              "1. Math 1 0700-0830 \n2. C Tech 0830-1000 \n3. Physics 1045-1215\n4. Chemistry 1215-1345",
              Colors.blue),
          RoutineView(
              "Monday",
              "1. Math 2 0700-0830 \n2. Subject 2 0830-1000 \n3. Subject 3 1045-1215\n4. Subject 4 1215-1345",
              Colors.green),
          RoutineView(
              "Tuesday",
              "1. Math 2 0700-0830 \n2. Subject 2 0830-1000 \n3. Subject 3 1045-1215\n4. Subject 4 1215-1345",
              Colors.purple),
          RoutineView(
              "Wednesday",
              "1. Math 2 0700-0830 \n2. Subject 2 0830-1000 \n3. Subject 3 1045-1215\n4. Subject 4 1215-1345",
              Colors.blueGrey),
          RoutineView(
              "Thursday",
              "1. Math 2 0700-0830 \n2. Subject 2 0830-1000 \n3. Subject 3 1045-1215\n4. Subject 4 1215-1345",
              Colors.brown),
          RoutineView(
              "Friday",
              "1. Math 2 0700-0830 \n2. Subject 2 0830-1000 \n3. Subject 3 1045-1215\n4. Subject 4 1215-1345",
              Colors.deepOrangeAccent),
        ],
      ),
    );
  }
}

class RoutineView extends StatelessWidget {
  String day;
  String subject;
  Color color;

  RoutineView(this.day, this.subject, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              day,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subject,
              style: TextStyle(color: Colors.white70),
            )
          ],
        ),
      ),
    );
  }
}
