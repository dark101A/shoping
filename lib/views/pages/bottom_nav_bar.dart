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
  final tabs = [
    PersistentTabConfig(
      screen: const HomePage(),
      item: ItemConfig(
        icon: const Icon(Icons.home),
        title: "Home",
      ),
    ),
    PersistentTabConfig(
      screen: const CartPage(),
      item: ItemConfig(
        icon: const Icon(Icons.shopping_basket),
        title: "Cart Page",
      ),
    ),
    PersistentTabConfig(
      screen: const FavoritsPage(),
      item: ItemConfig(
        icon: const Icon(Icons.favorite),
        title: "Favorits Page",
      ),
    ),
    PersistentTabConfig(
      screen: const ProfilePage(),
      item: ItemConfig(
        icon: const Icon(Icons.person),
        title: "Profile Page",
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Navigation Bar Demo',
      home: PersistentTabView(
        tabs: tabs,
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
