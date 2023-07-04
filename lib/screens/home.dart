import 'package:flutter/material.dart';
import 'package:food_app/widgets/category_tag.dart';
import 'package:food_app/widgets/productCard.dart';
import 'package:food_app/widgets/pub.dart';
import 'package:food_app/widgets/searchTextField.dart';
import 'package:food_app/widgets/seeall.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool activeAppetizer = false;
  bool activeBeverages = false;
  bool activeFruits = false;
  bool activeDesserts = false;
  bool activeSalad = false;
  bool activePizzas = false;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: OrientationBuilder(builder: (context, orientation) {
            return LayoutBuilder(builder: (context, constraints) {
              return Container(
                constraints: constraints,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 75,
                      child: TextFieldSearch(),
                    ),
                    Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SeeAll(
                                left: "Top categories",
                                right: "See all",
                                bold: false),
                            SizedBox(
                              width: size.width,
                              height: 35,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  InkWell(
                                    child: Tag(
                                        tag: "Appetizers",
                                        active: activeAppetizer),
                                    onTap: () {
                                      setState(() {
                                        activeAppetizer = true;
                                        activePizzas = false;
                                        activeDesserts = false;
                                        activeBeverages = false;
                                        activeFruits = false;
                                        activeSalad = false;
                                      });
                                    },
                                  ),
                                  InkWell(
                                    child: Tag(
                                        tag: "Beverages",
                                        active: activeBeverages),
                                    onTap: () {
                                      setState(() {
                                        activeAppetizer = false;
                                        activePizzas = false;
                                        activeDesserts = false;
                                        activeBeverages = true;
                                        activeFruits = false;
                                        activeSalad = false;
                                      });
                                    },
                                  ),
                                  InkWell(
                                      child: Tag(
                                          tag: "Fruits", active: activeFruits),
                                      onTap: () {
                                        setState(() {
                                          activeAppetizer = false;
                                          activePizzas = false;
                                          activeDesserts = false;
                                          activeBeverages = false;
                                          activeFruits = true;
                                          activeSalad = false;
                                        });
                                      }),
                                  InkWell(
                                    child: Tag(
                                        tag: "Pizzas", active: activePizzas),
                                    onTap: () {
                                      setState(() {
                                        activeAppetizer = false;
                                        activePizzas = true;
                                        activeDesserts = false;
                                        activeBeverages = false;
                                        activeFruits = false;
                                        activeSalad = false;
                                      });
                                    },
                                  ),
                                  InkWell(
                                    child: Tag(
                                        tag: "Desserts",
                                        active: activeDesserts),
                                    onTap: () {
                                      setState(() {
                                        activeAppetizer = false;
                                        activePizzas = false;
                                        activeDesserts = true;
                                        activeBeverages = false;
                                        activeFruits = false;
                                        activeSalad = false;
                                      });
                                    },
                                  ),
                                  InkWell(
                                    child:
                                        Tag(tag: "Salad", active: activeSalad),
                                    onTap: () {
                                      setState(() {
                                        activeAppetizer = false;
                                        activePizzas = false;
                                        activeDesserts = false;
                                        activeBeverages = false;
                                        activeFruits = false;
                                        activeSalad = true;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: size.height * .18,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  Pub(imgpath: 'assets/banner.png'),
                                  Pub(imgpath: 'assets/banner.jpg'),
                                ],
                              ),
                            ),
                            const SeeAll(
                                left: "Recommended for you",
                                right: "See all",
                                bold: false),
                            SizedBox(
                              width: double.infinity,
                              height: size.height * .4,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  ProductCard(
                                      imgpath: 'assets/potChicken.jpg',
                                      price: 260.0,
                                      name: 'Chicken',
                                      star: 5,
                                      fav: true),
                                  ProductCard(
                                      imgpath: 'assets/rice.jpg',
                                      price: 120.0,
                                      name: 'Rice',
                                      star: 5,
                                      fav: false),
                                  ProductCard(
                                      imgpath: 'assets/potChicken.jpg',
                                      price: 260.0,
                                      name: 'Chicken',
                                      star: 5,
                                      fav: true),
                                  ProductCard(
                                      imgpath: 'assets/massa.jpg',
                                      price: 360.0,
                                      name: 'Massa Chinesa',
                                      star: 4,
                                      fav: false),
                                  ProductCard(
                                      imgpath: 'assets/frango.jpg',
                                      price: 180.0,
                                      name: 'Chicken',
                                      star: 3,
                                      fav: false)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * .18,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  Pub(imgpath: 'assets/banner.jpg'),
                                  Pub(imgpath: 'assets/banner.png'),
                                ],
                              ),
                            ),
                            const SeeAll(
                                left: "Featured Foods",
                                right: "See all",
                                bold: false),
                            SizedBox(
                              width: double.infinity,
                              height: size.height * .4,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  ProductCard(
                                      imgpath: 'assets/rice.jpg',
                                      price: 260.0,
                                      name: 'Rice',
                                      star: 4,
                                      fav: true),
                                  ProductCard(
                                      imgpath: 'assets/espeto.jpg',
                                      price: 360.0,
                                      name: 'Chicken',
                                      star: 2,
                                      fav: false),
                                  ProductCard(
                                      imgpath: 'assets/frango.jpg',
                                      price: 100.0,
                                      name: 'Wings',
                                      star: 3,
                                      fav: true)
                                ],
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
              );
            });
          }),
        ),
      ),
    );
  }
}
