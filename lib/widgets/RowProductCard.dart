import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';

import 'stars.dart';

class RowProductCard extends StatefulWidget {
  final String imgpath;
  final double price;
  final String name;
  final int star;
  final bool fav;

  const RowProductCard(
      {super.key,
      required this.imgpath,
      required this.price,
      required this.name,
      required this.star,
      required this.fav});

  @override
  State<RowProductCard> createState() => _RowProductCardState();
}

class _RowProductCardState extends State<RowProductCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: SizedBox(
                      height: 130,
                      width: 130,
                      child: Image.asset(widget.imgpath, fit: BoxFit.fill)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            child: CircleAvatar(
                              backgroundColor: whiteColor,
                              child: InkWell(
                                child: Center(
                                  child: Icon(
                                    Icons.favorite,
                                    color: widget.fav
                                        ? Colors.red
                                        : secundaryColor,
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Chicken",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "MZN ${widget.price}",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    const Star(star: 5),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: redColor, width: 1),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Remove",
                        style: TextStyle(color: redColor),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
