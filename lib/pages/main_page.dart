import 'package:flutter/material.dart';
import 'package:projects/pages/breakfast.dart';
import 'package:projects/pages/profile.dart';
import 'package:projects/pages/settings.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   int _selecetedPageIndex = 0;
  final List<Widget> _pages = const [Breakfast(), ProfilePage(), SettingPage()];
  void _onTape(int index) {
    setState(() {
      _selecetedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  centerTitle: true,
  title: Text(
    _selecetedPageIndex==0?'BreakFast':_selecetedPageIndex==1?'Profile':'Settings',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
  ),
),
body: IndexedStack(
  index: _selecetedPageIndex,
  children: _pages,
),
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: _selecetedPageIndex,
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.grey,
    onTap: _onTape,
       items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
      
       ],
       
      ),

    );
  }
}
