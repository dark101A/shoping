import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:shoping/views/pages/cart_page.dart';
import 'package:shoping/views/pages/favorits_page.dart';
import 'package:shoping/views/pages/home_page.dart';
import 'package:shoping/views/pages/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Navigation Bar Demo',
      home: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: HomePage(),
            item: ItemConfig(
              icon: Icon(Icons.home),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: CartPage(),
            item: ItemConfig(
              icon: Icon(Icons.shopping_basket),
              title: "Cart Page",
            ),
          ),
          PersistentTabConfig(
            screen: FavoritsPage(),
            item: ItemConfig(
              icon: Icon(Icons.favorite),
              title: "Favorits Page",
            ),
          ),
          PersistentTabConfig(
            screen: ProfilePage(),
            item: ItemConfig(
              icon: Icon(Icons.person),
              title: "Profile Page",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
