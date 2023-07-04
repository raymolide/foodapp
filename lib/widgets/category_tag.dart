import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';

class Tag extends StatelessWidget {
  final String tag;
  final bool active;
  const Tag({super.key,required this.tag, required this.active});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            color: active ? primaryColor : null,
            borderRadius: BorderRadius.circular(60),
            border: Border.all(color: primaryColor)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.center,
              child: Text(
                tag,
                style: TextStyle(
                    color: active ? whiteColor : blackColor,
                    fontWeight: active ? FontWeight.bold : null),
              )),
        ),
      ),
    );
  }
}
