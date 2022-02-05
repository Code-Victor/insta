import 'package:flutter/material.dart';
import 'package:victor_test/avatar_card.dart';

Container Stories() {
  final List _stories = [
    'assets/profile-pic.jpg',
    'assets/alex-suprun-ZHvM3XIOHoE-unsplash (1).jpg',
    'assets/ben-parker-OhKElOkQ3RE-unsplash.jpg',
    'assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg',
    'assets/sigmund-jzz_3jWMzHA-unsplash.jpg',
    'assets/vicky-hladynets-C8Ta0gwPbQg-unsplash.jpg',
    'assets/profile-pic.jpg',
  ];
  
  return Container(
    height: 70,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: ListView.separated(
      separatorBuilder: (_, index) => const SizedBox(
        width: 15,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: _stories.length,
      itemBuilder: (context, index) {
        return Avatar(
          imageLoc: _stories[index],
        );
      },
    ),
  );
}
