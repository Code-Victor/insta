import 'package:victor_test/user.dart';

class Post {
  final String postImage;
  final String description;
  int likes;
  final int reposts;
  final int comments;
  final User user;

  Post({
    required this.postImage,
    required this.likes,
    required this.comments,
    required this.user,
    required this.reposts,
    required this.description,
  });

  static List<Post> samples = [
    Post(
      postImage: 'assets/(post)alvaro-lopez-renovell-l8BWufmQqio-unsplash.jpg',
      description: 'Having fun on the road-side',
      likes: 40,
      reposts: 12,
      comments:14 ,
      user: User(followers: 2,imageLoc:'assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg',username: "sebastian",)
    ),
    Post(
      postImage: 'assets/(post)alvaro-lopez-renovell-l8BWufmQqio-unsplash.jpg',
      description: 'Having fun on the road-side',
      likes: 40,
      reposts: 12,
      comments:14 ,
      user: User(followers: 2,imageLoc:'assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg',username: "sebastian",)
    ),
    Post(
      postImage: 'assets/(post)alvaro-lopez-renovell-l8BWufmQqio-unsplash.jpg',
      description: 'Having fun on the road-side',
      likes: 40,
      reposts: 12,
      comments:14 ,
      user: User(followers: 2,imageLoc:'assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg',username: "sebastian",)
    ),
    Post(
      postImage: 'assets/(post)alvaro-lopez-renovell-l8BWufmQqio-unsplash.jpg',
      description: 'Having fun on the road-side',
      likes: 40,
      reposts: 12,
      comments:14 ,
      user: User(followers: 2,imageLoc:'assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg',username: "sebastian",)
    ),
    Post(
      postImage: 'assets/(post)alvaro-lopez-renovell-l8BWufmQqio-unsplash.jpg',
      description: 'Having fun on the road-side',
      likes: 40,
      reposts: 12,
      comments:14 ,
      user: User(followers: 2,imageLoc:'assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg',username: "sebastian",)
    ),
    Post(
      postImage: 'assets/(post)alvaro-lopez-renovell-l8BWufmQqio-unsplash.jpg',
      description: 'Having fun on the road-side',
      likes: 40,
      reposts: 12,
      comments:14 ,
      user: User(followers: 2,imageLoc:'assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg',username: "sebastian",)
    ),
  ];
}
