 import 'package:flutter/material.dart';
import 'package:scroll_videos_app/config/helpers/format_data.dart';

class CustomButtons extends StatelessWidget {
   final int value;
   final IconData icon;
   final Color? color;

   const CustomButtons({
    super.key, 
    required this.value, 
    required this.icon, 
    iconColor}):color = iconColor ?? Colors.white;
    
   @override
   Widget build(BuildContext context) {
     return Column(
      children: [
        IconButton(onPressed: (){}, 
        icon: Icon(icon , color:color , size : 30)),
        if(value > 0)
        Text(FormatData.readbleNumber(value.toDouble()))
      ],
     );
   }
 }