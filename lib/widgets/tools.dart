import 'package:dash_board/utils/dimensions.dart';
import 'package:dash_board/widgets/col_iconText.dart';
import 'package:dash_board/widgets/icon_and_text.dart';
import 'package:dash_board/widgets/left_side.dart';
import 'package:dash_board/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

class Tools extends StatelessWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width10, vertical: Dimensions.height5),
          color: Color.fromARGB(255, 5, 70, 124),
          child: ColIconText(icon: Icons.build_sharp, text: "baba"),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width10, vertical: Dimensions.height5),
          color: Color.fromARGB(255, 217, 149, 12),
          child: ColIconText(icon: Icons.lock_clock, text: "Dadar"),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width10, vertical: Dimensions.height5),
          color: Color.fromARGB(255, 5, 104, 8),
          child: ColIconText(icon: Icons.check_circle, text: "Cacar"),
        ),
        IconAndText(icon: Icons.lock_clock, text: "305", iconColor: Colors.white,),
        // VerticalDivider(
        //   color: Colors.white54, width: 15, //width space of divider
        //   thickness: 3,
        // ),
        SizedBox(width: 15,),
        Container(
          width: 3,
          color: Colors.white54,
          height: Dimensions.height50,
        ),
        Container(
          padding: EdgeInsets.only(left: Dimensions.width10),
          child: Text("Question",style: TextStyle(fontSize: Dimensions.font20,color: Colors.white54),),
        ),
      ],
    );
  }
}
