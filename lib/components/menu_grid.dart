import 'package:flutter/material.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({super.key, required this.imagePath, required this.menuName, required this.menuPrice, required this.menuDescription });
  final String imagePath;
  final String menuName;
  final String menuPrice;
  final String menuDescription; 

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        Image.asset(imagePath,fit: BoxFit.cover,height: 100,),
        const SizedBox(height: 5,),
        Expanded(
          child: Row( 
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(menuName,),
              Text(menuPrice,)
            ],
          ),
        ), 
        Text(menuDescription, maxLines: 2,overflow: TextOverflow.ellipsis, textAlign:TextAlign.center ,style: TextStyle(fontSize: 12,),),

        const SizedBox(height: 10,),
      ],
    );
  }
}