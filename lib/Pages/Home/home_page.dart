import 'package:flutter/material.dart';
import 'package:food_delivery_application/Pages/Home/main_food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainFoodPage(),
    );
  }
}
