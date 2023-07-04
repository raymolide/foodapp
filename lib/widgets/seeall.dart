// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';

class SeeAll extends StatefulWidget {
  final String left;
  final String right;
  final bool bold;

  const SeeAll(
      {Key? key, required this.left, required this.right, required this.bold})
      : super(key: key);

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.left,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: seeAllLeftTextColor),
          ),
          InkWell(
            child: Text(
              widget.right,
              style: TextStyle(
                  fontSize: widget.bold ? 24 : 16,
                  fontWeight: widget.bold ? FontWeight.bold : FontWeight.w500,
                  color: widget.bold ? whiteColor : seeAllRightTextColor),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
