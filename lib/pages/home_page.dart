import 'package:data_day_grind/classes/store.dart';
import 'package:data_day_grind/components/horizontal_card.dart';
import 'package:data_day_grind/components/store_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Store> stores = [
    Store(name: 'Metro'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/penguins-yes.png',
                scale: 3,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Line Jumper',
                style: GoogleFonts.rubik(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          ),
          leading: Icon(
            Icons.dehaze,
            color: Colors.black,
          ),
          actions: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(Icons.more_vert, color: Colors.black),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60.0),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: Color(0xFFF1F1F1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide:
                              BorderSide(style: BorderStyle.none, width: 0)),
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Search'),
                ),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recently Visited',
                    style: GoogleFonts.rubik(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Give input',
                    style: GoogleFonts.rubik(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color:  Color(0xFF5452F6),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              StoreCard(store: stores[0]),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Near You',
                  style: GoogleFonts.rubik(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Flexible(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                  HorizontalCard(store: stores[0]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
