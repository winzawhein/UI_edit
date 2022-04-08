import 'package:dash_board/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CircleClip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: ClipPath(
            clipper: CustomHalfCircleClipper(),
            child: Container(
              height: Dimensions.height300,
              width: Dimensions.width300,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(Dimensions.radius150)),
            ),
          ),
        ),
        Positioned(
          top: Dimensions.height3,
          right: Dimensions.width3,
          left: Dimensions.width3,
          child: ClipPath(
            clipper: CustomHalfCircleClipper(),
            child: Container(
              height: Dimensions.height300,
              width: Dimensions.width300,
              decoration: BoxDecoration(
                  color: Color(0xff115767),
                  borderRadius: BorderRadius.circular(Dimensions.radius150)),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
