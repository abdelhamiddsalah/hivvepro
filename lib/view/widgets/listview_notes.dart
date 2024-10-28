import 'package:flutter/material.dart';
import 'package:hivvepro/view/widgets/note_item.dart';

class ListviewNotes extends StatelessWidget {
  const ListviewNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
         return Padding(
           padding: const EdgeInsets.only(bottom: 10),
           child: NoteItem(),
         );
        }),
    );
  }
}