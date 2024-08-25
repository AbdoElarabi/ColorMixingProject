import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        widthFactor: 300,
        heightFactor: 300,
        child: Lottie.asset("images/Animation - 1724018677386.json",onLoaded: (lotti){
         // final time = lotti.duration;
          Future.delayed(const Duration(seconds: 4),(){
            Navigator.of(context).pushReplacementNamed("startPage");
          });
          
        }),
      ),
    );
  }
}