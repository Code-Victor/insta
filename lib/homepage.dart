import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:victor_test/post_list.dart';
import 'package:victor_test/stories.dart';
import 'dart:math' as math;
import 'card.dart';
import 'avatar_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.courgette(
                fontSize: 25, fontWeight: FontWeight.w700 ,color: Colors.black)),
        backgroundColor: Colors.white38,
        actions: [
            IconButton(
              icon: const Icon(
                Icons.add_box_outlined,
                color:Colors.black,
                ),
                onPressed: (){},
            ),
            IconButton(
              icon: Transform.translate(
                offset: const Offset(0, -3.5),
                child: Transform.rotate(
                  
                  angle: -60 * math.pi / 360,
                  child: const Icon(
                    Icons.send_outlined,
                
                    color:Colors.black,
                    ),
                ),
              ),
                onPressed: (){},
            ),
        ],

        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        elevation: 5,
        onTap: _setIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favourites'),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Stories(),
            postList(),
          ],
        ),
      ),
    );
  }



  void _setIndex(int value) {}
}


