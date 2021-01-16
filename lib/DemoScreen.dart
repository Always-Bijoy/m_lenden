import 'package:flutter/material.dart';
import 'package:m_lenden/pages.dart';
import 'package:m_lenden/screen/Bottom%20Nav/Transaction%20History.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedItem = 0;
  var _pages = [TransactionHistory(), SecondPage(), ThirdPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation Bar - Demo'),),
      body: Center(child: _pages[_seletedItem],),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.photo), title: Text('Photos')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Profile'))
        ],
        currentIndex: _seletedItem,
        onTap: (index){
          setState(() {
            _seletedItem = index;
          });
        },
      ),
    );
  }
}