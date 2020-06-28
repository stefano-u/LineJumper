import 'package:flutter/material.dart';

class Penguins extends StatefulWidget {
  final int busy;
  Penguins({this.busy});

  @override
  _PenguinsState createState() => _PenguinsState();
}

class _PenguinsState extends State<Penguins> {
  _createPenguins() {
    List<Widget> widgets = [];

    int busyCount = 0;
    for (var i = 0; i < 10; i++) {
      widgets.add(Image.asset(
        i < widget.busy ? 'assets/penguins-yes.png' : 'assets/penguins-no.png' ,
        scale: 3,
      ));
      widgets.add(SizedBox(width: 4,));
      busyCount++;
    }

    return Wrap(
      children: widgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _createPenguins();
  }
}
