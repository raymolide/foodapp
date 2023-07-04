import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/cart.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/menu.dart';
import 'package:food_app/screens/order.dart';
import 'package:food_app/screens/profile.dart';
import 'package:food_app/utils/constants.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: ThemeData(
      fontFamily: 'Arial',
      primarySwatch: Colors.orange,
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.orange),
        ),
      ),
    ),
    routes: {
      '/': (context) => const MyApp(),
      '/home': (context) => const Home(),
      '/menu': (context) => const Menu(),
      '/order': (context) => const Order(),
      '/cart': (context) => const Cart(),
      '/profile': (context) => const Profile(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          showElevation: true,
          itemCornerRadius: 8,
          curve: Curves.easeInBack,
          onItemSelected: (index) => setState(() {
            currentIndex = index;
            controller.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInSine);
          }),
          items: [
            BottomNavyBarItem(
              icon: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              activeColor: primaryColor,
              inactiveColor: secundaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.menu),
              title: const Text('Menu'),
              activeColor: primaryColor,
              inactiveColor: secundaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.list_alt_sharp),
              title: const Text(
                'Orders',
              ),
              activeColor: primaryColor,
              inactiveColor: secundaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.shopping_cart),
              title: const Text('Cart'),
              activeColor: primaryColor,
              inactiveColor: secundaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Profile'),
              activeColor: primaryColor,
              inactiveColor: secundaryColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        body: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: const [Home(), Menu(), Order(), Cart(), Profile()]));
  }
}
