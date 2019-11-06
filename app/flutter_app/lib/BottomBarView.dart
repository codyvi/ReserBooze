import 'package:flutter/material.dart';

class BottomBarView extends StatefulWidget {
  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {

  //Index of the current selected tab
  int iCurrentIndex = 0;

  //List of the widget. The index match the position of the icons
  final tabs = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Body has the the widget(screen)
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        //It says the index of the icon
        currentIndex: iCurrentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        backgroundColor: Colors.white,
        //The size of the font when you click on it
          selectedFontSize: 15,
        //The size of the font when the item is unclicked
          unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Reservas'),
            backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.local_bar),
            title: Text('Antros'),
            backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
            backgroundColor: Colors.blue
          )
        ],

        //It is called every time an item is tapped.
          //Index is the one that was tapped
        onTap:(index){
          setState(() {
            iCurrentIndex = index;
          });
        }
      ),
    );
  }
}