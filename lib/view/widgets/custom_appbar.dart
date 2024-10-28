import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(fontSize: 28),),
        GestureDetector(onTap: (){},child: CircleAvatar(backgroundColor: Colors.white.withOpacity(0.1),radius: 22,
        child: IconButton(onPressed: (){}, icon: Icon(icon,color: Colors.white,)),),)
      ],
    );
  }
}