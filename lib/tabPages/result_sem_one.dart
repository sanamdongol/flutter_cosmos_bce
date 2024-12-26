import 'package:flutter/material.dart';

class ResultSemOne extends StatefulWidget {
  const ResultSemOne({super.key});

  @override
  State<ResultSemOne> createState() => _ResultSemOneState();
}

class _ResultSemOneState extends State<ResultSemOne> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      showBottomBorder: true,
      columns: [
        DataColumn(
          label: Text(
            "Subject Name",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(
          label: Text(
            "Grade",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(label: Text('Remarks'))
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('Subject 1')),
          DataCell(Text('A')),
          DataCell(Text('Good'))
        ]),
        DataRow(cells: [
          DataCell(Text('Subject 2')),
          DataCell(Text('A-')),
          DataCell(Text('Good Minus'))
        ]),
        DataRow(cells: [
          DataCell(Text('Subject 3')),
          DataCell(Text('A')),
          DataCell(Text('Good '))
        ]),
      ],
    );
  }
}
