import 'package:flutter/material.dart';
import 'package:intermediate/components/button_nav.dart';
import 'package:intermediate/pages/cart_page.dart';
import 'package:intermediate/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexSelected = 0;
  void navigateNext(int index) {
    setState(() {
      _indexSelected = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[500],

        leading: Builder(
          builder: (context) => IconButton(
            onPressed: Scaffold.of(context).openDrawer,
            icon: Icon(Icons.menu, color: Colors.black),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             
            Column(
              children: [
           
                DrawerHeader(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(color: Colors.grey[900]),
                  child: Image.asset(
                    'lib/images/logo.png',
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                 Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text('Home', style: TextStyle(color: Colors.white)),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.people, color: Colors.white),
                title: Text('About', style: TextStyle(color: Colors.white)),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text('Settings', style: TextStyle(color: Colors.white)),
              ),
            ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:25.0,bottom: 30),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text('logout', style: TextStyle(color: Colors.white)),
              ),
            ),
           
             
          ],
          
        ),
      ),
      body: _pages[_indexSelected],
      bottomNavigationBar: ButtonNav(onTabChange: navigateNext),
    );
  }
}
