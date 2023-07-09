import 'package:flutter/material.dart';

class Pub extends StatelessWidget {
  final String imgpath;
  const Pub({super.key, required this.imgpath});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: SizedBox(
            width: size.width,
            height: size.height / 4,
            child: Image.asset(imgpath, fit: BoxFit.fill)),
      ),
    );
  }
}
