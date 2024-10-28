import 'package:flutter/material.dart';

class CustomTextfield1 extends StatelessWidget {
  const CustomTextfield1({super.key, required this.text, required this.hintStyle,  this.maxlines});
 final String text;
 final TextStyle hintStyle;
 final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      decoration: InputDecoration(
         hintText: text,
         hintStyle: hintStyle,
         border: outlineinputborder(),
         focusedBorder: outlineinputborder(),
         enabledBorder: outlineinputborder(),
      ),
    );
  }
  OutlineInputBorder outlineinputborder() {
    return OutlineInputBorder(
         borderRadius: BorderRadius.circular(10),
        borderSide:const BorderSide(color: Colors.white),
       );
  }
}