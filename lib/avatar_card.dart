import 'package:flutter/material.dart';

import 'round_avatar.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.imageLoc, this.imageRadius=35}) : super(key: key);

  final String imageLoc;
  final double imageRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
          padding:const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
          colors: [Colors.yellowAccent,Colors.purpleAccent],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )
          ),
        child: Center(
          child: roundAvatar(imageRadius: imageRadius, imageLoc: imageLoc),
        ),
    );
  }
}

