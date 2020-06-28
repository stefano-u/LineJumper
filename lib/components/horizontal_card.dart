import 'package:data_day_grind/classes/store.dart';
import 'package:flutter/material.dart';

class HorizontalCard extends StatefulWidget {
  final Store store;

  HorizontalCard({this.store});

  @override
  _HorizontalCardState createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 110,
          width: 171,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/metro.png'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('${widget.store.name} • '),
            Text('${widget.store.status}'),
          ],
        )
      ],
    );
  }
}
