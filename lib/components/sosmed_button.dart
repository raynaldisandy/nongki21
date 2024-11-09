import 'package:flutter/material.dart';

class SosmedButton extends StatelessWidget {
  const SosmedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          Image.asset("assets/Icons/facebook.png", fit: BoxFit.contain, height: 25,width: 25,),
          const SizedBox(width:30,),
          Image.asset("assets/Icons/wa.png", fit: BoxFit.contain,height: 25,width: 25,),
          const SizedBox(width: 30,),
          Image.asset("assets/Icons/ig.png", fit: BoxFit.contain,height: 25,width: 25,),
          const SizedBox(width: 30,),
          Image.asset("assets/Icons/pinterest.png", fit: BoxFit.contain,height: 25,width: 25,),
        ],
      ),
    );
  }
}