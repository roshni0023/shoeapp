import 'package:flutter/material.dart';
import 'package:shoeapp/screen/shopPage.dart';

import '../components/bottomnav.dart';
import 'cartpage.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex =0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages =[
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
          onTabChange: (index)=> navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
              color: Colors.black,
              ),
            onPressed: (){
                Scaffold.of(context).openDrawer();
          }
        ),
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        ),
      body: _pages[_selectedIndex],
    );
  }
}
