import 'package:ecommerce_app/components/bottomnavbar.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
   final List<Widget> _pages = [const ShopPage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      bottomNavigationBar: MyBottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
    ),
     appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(Icons.menu, color: Color.fromARGB(255, 255, 255, 255)),
            ),
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
                  child: Image.asset(
                    'assets/images/logo.png',
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    iconColor: Colors.white,
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.info),
                    iconColor: Colors.white,
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, bottom: 0.0),
                  child: ListTile(
                    leading: Icon(Icons.logout),
                    iconColor: Colors.white,
                    title: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
        body: _pages[_selectedIndex],
    );
    
  }
}
