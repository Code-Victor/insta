import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:victor_test/round_avatar.dart';
import 'package:victor_test/user.dart';
import 'dart:math' as math;
import 'posts.dart';

class UserCard extends StatefulWidget {
  final Post child;
  const UserCard({required this.child});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  IconData _favourite = Icons.favorite_border;
  _increasefavorite() {
    _favourite = Icons.favorite;
    widget.child.likes++;
  }

  _decreasefavorite() {
    _favourite = Icons.favorite_border;
    widget.child.likes--;
  }

  _setFavourite() {
    if (_favourite == Icons.favorite_border) {
      setState(
        () {
          _increasefavorite();
          final snackBar = SnackBar(
            content: Text("You like a Posts by ${widget.child.user.username}"),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                setState(() {
                  _decreasefavorite();
                });
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      );
    } else if (_favourite == Icons.favorite) {
      setState(() {
        _decreasefavorite();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                roundAvatar(
                    imageRadius: 25, imageLoc: widget.child.user.imageLoc),
                Column(
                  children: [
                    Text(
                      widget.child.user.username,
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Machesutte,USA",
                        style: GoogleFonts.montserrat(
                            fontSize: 14, fontWeight: FontWeight.w300)),
                  ],
                ),
                const Expanded(child: SizedBox()),
                PopupMenuButton(
                  child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Icon(Icons.more_vert)),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Container(width: 120, child: Text("Report..."))),
                    const PopupMenuItem(child: Text("info")),
                    const PopupMenuItem(child: Text("Hide")),
                    const PopupMenuItem(child: Text("Share to...")),
                    const PopupMenuItem(child: Text("Unfollow")),
                  ],
                )
              ],
            ),
          ),
          Image(
            image: AssetImage(widget.child.postImage),
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(children: [
            IconButton(
              icon: Icon(
                _favourite,
                color: Colors.black,
              ),
              onPressed: () {
                _setFavourite();
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.comment_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Transform.translate(
                offset: const Offset(0, -3.5),
                child: Transform.rotate(
                  angle: -60 * math.pi / 360,
                  child: const Icon(
                    Icons.send_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              onPressed: () {},
            ),
            Expanded(child: SizedBox()),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_border_sharp),
            )
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                "${widget.child.likes} likes",
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
            ]),
          )
        ],
      ),
    );
  }
}





//  Container(
//       height: 400,
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: [Colors.yellow.shade400, Colors.purpleAccent.shade200],
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft,
//               stops: const [.2, .8])),
//       child: Center(
//           child: Text(
//         child.description,
//         style: const TextStyle(fontSize: 40,color: Colors.white),
//       )),
//     );