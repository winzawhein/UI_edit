import 'package:dash_board/utils/dimensions.dart';
import 'package:dash_board/widgets/icon_and_text.dart';
import 'package:dash_board/widgets/left_side.dart';
import 'package:dash_board/widgets/right_side.dart';
import 'package:flutter/material.dart';

class EachSettingBar extends StatelessWidget {
  final IconData icon;
  final String text;
  final AssetImage image;
  EachSettingBar({Key? key,required this.icon,required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF5E8C9F),
      height: Dimensions.height65,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftSide(icon: icon,),
          RightSide(text: text, image: image),
        ],
      ),
    );
  }
}
