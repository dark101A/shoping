import 'package:flutter/material.dart';
import 'package:shoping/utils/app_route.dart';
import 'package:shoping/views/pages/bottom_nav_bar.dart'; // المسار الخاص بك

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoping',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavBar(),
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
