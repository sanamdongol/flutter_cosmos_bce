import 'package:flutter/material.dart';

class NoticeBoardDetail extends StatefulWidget {
  String title;
  Color? color;

  NoticeBoardDetail(this.title, this.color);

  @override
  State<NoticeBoardDetail> createState() => _NoticeBoardDetailState();
}

class _NoticeBoardDetailState extends State<NoticeBoardDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          splitMsg(widget.title, true),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              splitMsg(widget.title, false),
              style: TextStyle(color: widget.color),
            )
          ],
        ),
      ),
    );
  }

  String splitMsg(String title, bool isAppBar) {
    List<String> result = title.split("\n");
    print(result);
    return isAppBar ? result[0] : result[1];
  }
}
