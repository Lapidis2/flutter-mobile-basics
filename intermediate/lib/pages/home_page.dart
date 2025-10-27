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
    return  Scaffold(
      body: _pages[_indexSelected],
      bottomNavigationBar:ButtonNav(onTabChange:navigateNext,) ,
    );
  }
}