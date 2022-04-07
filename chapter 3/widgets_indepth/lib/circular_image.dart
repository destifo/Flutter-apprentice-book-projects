import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    Key? key,
    this.imageProvider,
    this.imageRadius = 10,
  }) : super(key: key);

  final double imageRadius;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CircleAvatar(
      radius: imageRadius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
