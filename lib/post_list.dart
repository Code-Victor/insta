import 'package:flutter/material.dart';
import 'card.dart';
import 'posts.dart';

class postList extends StatelessWidget {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];
  List<Post> samples = Post.samples;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView.separated(
          separatorBuilder: (_, index)=>
           const SizedBox(
              height: 10,
            )
          ,
          itemCount: samples.length,
          itemBuilder: (context, index) {
            return UserCard(
              child: samples[index],
            );
          },
        ),
      ),
    );
  }
}
