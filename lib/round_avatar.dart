import 'package:flutter/material.dart';

class roundAvatar extends StatelessWidget {
  const roundAvatar({
    Key? key,
    required this.imageRadius,
    required this.imageLoc,
  }) : super(key: key);

  final double imageRadius;
  final String imageLoc;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      
      backgroundColor:Colors.white,
      radius: imageRadius-5,
      child: CircleAvatar(
    radius: imageRadius-8,
    backgroundImage: AssetImage(imageLoc),
    ),
    );
  }
}
