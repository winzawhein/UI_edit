import 'package:dash_board/utils/dimensions.dart';
import 'package:flutter/material.dart';

import 'icon_and_text.dart';

class LeftSide extends StatelessWidget {
  final IconData icon;
  LeftSide({Key? key,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconAndText(icon: icon, text: "305", iconColor: Colors.white,),
        SizedBox(width: 20,),
        VerticalDivider(
          color: Colors.white54, width: Dimensions.width10, //width space of divider
          thickness: 2,
        ),
        Container(
          padding: EdgeInsets.only(left: Dimensions.width10),
          child: Text("Question",style: TextStyle(fontSize: 20,color: Colors.white54),),
        ),
      ],
    );
  }
}
