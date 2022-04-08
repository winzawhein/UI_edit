import 'package:dash_board/utils/dimensions.dart';
import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  IconAndText({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
            size: Dimensions.iconSize40,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: Dimensions.font20,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}