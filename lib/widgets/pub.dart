import 'package:flutter/material.dart';

class Pub extends StatelessWidget {
  final String imgpath;
  const Pub({super.key, required this.imgpath});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      child: SizedBox(
          height: size.height * .2,
          width: size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(imgpath, fit: BoxFit.fill),
          )),
    );
  }
}
