import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Star extends StatelessWidget {
  final int star;
  const Star({super.key,required this.star});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < star; i++)
            Icon(
              Icons.star_rate,
              size: 15,
              color: Colors.yellow[600],
            ),
          for (int i = 0; i < 5 - star; i++)
            Icon(
              Icons.star_rate,
              size: 15,
              color: secundaryColor,
            ),
        ],
      ),
    );
  }
}
