import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/widgets/seeall.dart';
import '../widgets/RowProductCard.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: whiteColor,
            ),
            onPressed: () {}),
        body: SafeArea(
          child: SizedBox(
              height: size.height,
              child: Column(children: [
                Container(
                    height: size.height * .10,
                    color: primaryColor,
                    child: SeeAll(left: '', right: 'MZN 300.0', bold: true)),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: const [
                      RowProductCard(
                          imgpath: 'assets/frango.jpg',
                          price: 100.0,
                          name: 'Wings',
                          star: 3,
                          fav: true,
                          added: true),
                      RowProductCard(
                          imgpath: 'assets/frango.jpg',
                          price: 100.0,
                          name: 'Wings',
                          star: 3,
                          fav: true,
                          added: true),
                      RowProductCard(
                          imgpath: 'assets/frango.jpg',
                          price: 100.0,
                          name: 'Wings',
                          star: 3,
                          fav: true,
                          added: true),
                    ],
                  ),
                ),
              ])),
        ));
  }
}
