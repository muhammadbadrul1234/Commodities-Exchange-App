import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Invest_HMPage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () =>print("menu"),
        ), //IconButton
        actions: [
          IconButton(icon: Icon(Icons.setting), onPressed: () =>print("setting"),),
        ],
        ), //AppBar
      body: Stack(
        child: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: Colors.white,
          ) //Container
        ), //Align
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 200,
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ), //BorderRadius
          ) //Container
        ) //Align
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(alignment: Alignment.topCenter,
              child: CardList(),
              ), //Align
            ]

          )
              ],
            ),
          )
        ],
        ]
          ),
        ),
      ), //Stack
    ); //Scaffold
  }
}

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(itemCount: cards.length,
        itemBuilder: (BuildContext context, int i, int index) {
         return Card_Design();
        }
        options: CarouselOptions(initialPage: 0,enableInfiniteScroll: false,enlargeCenterPage: true)), //CarouselSlider
    ); //Container
  }
}