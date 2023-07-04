import 'package:flutter/material.dart';
import '../widgets/category_tag.dart';
import '../widgets/RowProductCard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final controller = PageController(initialPage: 0);
  final controllerFruits = PageController(initialPage: 0);
  bool activeAppetizer = false;
  bool activeBeverages = false;
  bool activeFruits = false;
  bool activeDesserts = false;
  bool activeSalad = false;
  bool activePizzas = false;

  @override
  void initState() {
    activeAppetizer = true;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                width: size.width,
                height: 35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      child: Tag(tag: "Appetizers", active: activeAppetizer),
                      onTap: () {
                        setState(() {
                          activeAppetizer = true;
                          activePizzas = false;
                          activeDesserts = false;
                          activeBeverages = false;
                          activeFruits = false;
                          activeSalad = false;
                          controller.jumpToPage(0);
                        });
                      },
                    ),
                    InkWell(
                      child: Tag(tag: "Beverages", active: activeBeverages),
                      onTap: () {
                        setState(() {
                          activeAppetizer = false;
                          activePizzas = false;
                          activeDesserts = false;
                          activeBeverages = true;
                          activeFruits = false;
                          activeSalad = false;
                          controller.jumpToPage(1);
                        });
                      },
                    ),
                    InkWell(
                        child: Tag(tag: "Fruits", active: activeFruits),
                        onTap: () {
                          setState(() {
                            activeAppetizer = false;
                            activePizzas = false;
                            activeDesserts = false;
                            activeBeverages = false;
                            activeFruits = true;
                            activeSalad = false;

                            controller.jumpToPage(2);
                          });
                        }),
                    InkWell(
                      child: Tag(tag: "Pizzas", active: activePizzas),
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
                      child: Tag(tag: "Desserts", active: activeDesserts),
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
                      child: Tag(tag: "Salad", active: activeSalad),
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
            ),
          ),
          Expanded(
            child: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [];
              },
              body: PageView(
                controller: controller,
                scrollDirection: Axis.vertical,
                onPageChanged: (index) {
                  setState(() {
                    activeAppetizer = false;
                    activeBeverages = false;
                    activePizzas = false;
                    activeDesserts = false;
                    activeFruits = false;
                    activeSalad = false;
                    switch (index) {
                      case 0:
                        activeAppetizer = true;
                        break;
                      case 1:
                        activeBeverages = true;
                        break;
                      case 2:
                        activeFruits = true;
                        break;
                    }
                  });
                },
                children: [
                  ListView(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    children: [
                      Column(
                        children: const [
                          ListTile(
                            title: Text(
                              'Appetizers',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                          RowProductCard(
                              imgpath: 'assets/frango.jpg',
                              price: 100.0,
                              name: 'Wings',
                              star: 3,
                              fav: true),
                          RowProductCard(
                              imgpath: 'assets/frango.jpg',
                              price: 100.0,
                              name: 'Wings',
                              star: 3,
                              fav: true),
                          RowProductCard(
                              imgpath: 'assets/frango.jpg',
                              price: 100.0,
                              name: 'Wings',
                              star: 3,
                              fav: true),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Column(
                        children: const [
                          ListTile(
                            title: Text(
                              'Beverages',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                          RowProductCard(
                              imgpath: 'assets/frango.jpg',
                              price: 100.0,
                              name: 'Wings',
                              star: 3,
                              fav: true),
                          RowProductCard(
                              imgpath: 'assets/frango.jpg',
                              price: 100.0,
                              name: 'Wings',
                              star: 3,
                              fav: true),
                          RowProductCard(
                              imgpath: 'assets/frango.jpg',
                              price: 100.0,
                              name: 'Wings',
                              star: 3,
                              fav: true),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Column(
                        children: const [
                          ListTile(
                            title: Text(
                              'Fruits',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                          RowProductCard(
                              imgpath: 'assets/massa.jpg',
                              price: 100.0,
                              name: 'Massa',
                              star: 3,
                              fav: true),
                          RowProductCard(
                              imgpath: 'assets/potChicken.jpg',
                              price: 400.0,
                              name: 'Chicken Masala',
                              star: 3,
                              fav: true),
                          RowProductCard(
                              imgpath: 'assets/rice.jpg',
                              price: 180.0,
                              name: 'Rice',
                              star: 3,
                              fav: true),
                          RowProductCard(
                              imgpath: 'assets/frango.jpg',
                              price: 100.0,
                              name: 'Wings',
                              star: 3,
                              fav: true),
                          RowProductCard(
                              imgpath: 'assets/frango.jpg',
                              price: 100.0,
                              name: 'Wings',
                              star: 3,
                              fav: true),
                          RowProductCard(
                              imgpath: 'assets/frango.jpg',
                              price: 100.0,
                              name: 'Wings',
                              star: 3,
                              fav: true),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
