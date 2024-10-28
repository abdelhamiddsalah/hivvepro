import 'package:flutter/material.dart';

class ButtonInShowmodal extends StatelessWidget {
  const ButtonInShowmodal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff62FCD7)
      ),
      child: GestureDetector(onTap: () {
        
      },child: Center(child: Text('Add',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),),
    );
  }
}