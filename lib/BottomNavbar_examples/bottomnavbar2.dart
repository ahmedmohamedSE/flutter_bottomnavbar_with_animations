import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomnavBar2 extends StatefulWidget {
  @override
  BottomnavBar2State createState() => BottomnavBar2State();
}

class BottomnavBar2State extends State<BottomnavBar2> {
  var currentIndex = 0;

 

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
 
      body: _screens[currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: screenWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                SizedBox(
                  width: screenWidth * .2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? screenWidth * .12 : 0,
                      width: index == currentIndex ? screenWidth * .2125 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Color.fromARGB(255, 0, 94, 255).withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * .2125,
                  alignment: Alignment.center,
                  child: Icon(
                    listOfIcons[index],
                    size: screenWidth * .076,
                    color: index == currentIndex
                        ? Color.fromARGB(255, 54, 128, 255)
                        : Colors.black26,
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
