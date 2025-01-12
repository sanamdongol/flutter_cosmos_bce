import 'package:flutter/material.dart';
import 'package:flutter_cosmos_class/notice_board_detail.dart';
import 'package:flutter_cosmos_class/subject_details/arithmetic_maths.dart';
import 'package:flutter_cosmos_class/subject_details/math_one.dart';
import 'package:flutter_cosmos_class/subject_details/pst.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notice Board",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextButton(
                    onPressed: () {},
                    child: Text("View All"),
                  )
                ],
              ),
              NoticeBoardView(),
            ],
          ),
        ),
      ),
    );
  }
}

class NoticeBoardView extends StatefulWidget {
  const NoticeBoardView({super.key});

  @override
  State<NoticeBoardView> createState() => _NoticeBoardViewState();
}

class _NoticeBoardViewState extends State<NoticeBoardView> {
  final List<String> notices = <String>[
    'Holiday\nDear Students our college will remain closed on Jan 1, 2024',
    'Tour Program\n7th Sem BCE Get ready with your gears for exciting tour @ Jawalakhel Zoo',
    'Sports Week\nGet Set Go, Let\s collect the medals as much as you can. Prepare for various sports competition',
    'Food Festival\nEmpty your stomach from today, prepare yourself for the free food festival @ cosmos canteen',
    'Project Defense\n7th Sem BCE, Prepare for project defense'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
        itemCount: notices.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NoticeBoardDetail(
                        notices[index],
                        index % 2 == 0
                            ? Colors.deepPurple[300]
                            : Colors.indigo[300]),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: index % 2 == 0
                    ? Colors.deepPurple[300]
                    : Colors.indigo[300],
              ),
              child: Text(notices[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white)),
            ),
          );
        },
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
          SubjectView("AM", Colors.blueGrey, ArithmeticMath()),
          SubjectView("M1", Colors.orange, MathOne()),
          SubjectView("PST", Colors.yellow, PST()),
          SubjectView("MAD", Colors.green, ArithmeticMath()),
          SubjectView("CHE", Colors.purple, ArithmeticMath()),
          SubjectView("RF", Colors.white30, ArithmeticMath()),
        ],
      ),
    );
  }
}

class SubjectView extends StatelessWidget {
  String subjectInitial;
  Color color;
  Widget nameOfAnotherClass;

  SubjectView(this.subjectInitial, this.color, this.nameOfAnotherClass);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nameOfAnotherClass),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.black,
          child: Text(subjectInitial, style: TextStyle(color: color)),
        ),
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
