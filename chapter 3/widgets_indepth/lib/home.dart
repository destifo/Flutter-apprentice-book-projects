import 'package:flutter/material.dart';
import 'card1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    const Card1(),
    // TODO: Replace with Card2
    Container(
      color: Colors.green,
    ),
    // TODO: Replace with Card3
    Container(
      color: Colors.blue,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // TODO: Style the title
      appBar: AppBar(
          title: Text(
        'Fooderlich',
        style: Theme.of(context).textTheme.headline6,
      )),
      // TODO: Style the body text
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard,
              ),
              label: 'Card1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card3"),
        ],
      ),
    );
  }
}
