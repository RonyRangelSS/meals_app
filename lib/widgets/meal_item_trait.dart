import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  final IconData icon;
  final String label;

  const MealItemTrait({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white,),
        SizedBox(width: 6,),
        Text(label, style: TextStyle(color: Colors.white),)
      ],
    );
    
  }


}