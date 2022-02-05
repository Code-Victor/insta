import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:victor_test/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context,
      PageTransition(type: PageTransitionType.fade, duration: const Duration(seconds: 2),child: HomePage(title: 'Instagram')),

    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child:  Center(
              child: Container(
                child: Image(image: AssetImage('assets/logo-ig-png-32464.png') ,height: 80,),
              ),
            ),
          ),
          Positioned(
            bottom:5,
            left:120,
            child: Column(
              children: const [
            Text('from'),
            GradientText("CodeVictor",style: TextStyle(fontSize: 25,fontWeight:FontWeight.w600 ),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(241, 160, 5, 1),
                    Color.fromRGBO(203, 2, 120, 1),
                    Color.fromRGBO(89, 80, 214, 1)
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
