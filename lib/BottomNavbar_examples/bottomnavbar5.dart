import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomnavBar5 extends StatefulWidget {
  @override
  BottomnavBar5State createState() => BottomnavBar5State();
}

class BottomnavBar5State extends State<BottomnavBar5> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 68, 255),

    body:_screens[currentIndex],
      bottomNavigationBar: Container(
        // color: Colors.deepPurpleAccent,
        height: size.width * .155,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  currentIndex = index;
                
                });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: size.width * .014),
                Icon(listOfIcons[index],
                    size: size.width * .076, color: Colors.white),
                AnimatedContainer(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    top: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .153,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
  final List<Widget> _screens = [
    Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Icon(Icons.home_rounded),
        )),
    Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Icon(Icons.favorite_rounded),
        )),
    Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Icon(Icons.settings_rounded),
        )),
    Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Icon(Icons.person_rounded),
        )),
  ];
}




      