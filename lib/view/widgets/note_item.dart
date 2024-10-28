import 'package:flutter/material.dart';
import 'package:hivvepro/view/pages/edit_page.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
         color: Colors.green,
         borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('flutter project',style: TextStyle(color: Colors.black,fontSize: 26),),
              subtitle: Text('flutter project on pc', style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 20),),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.delete,color: Colors.black,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 23),
              child: Text('May 22, 2021',style: TextStyle(color: Colors.black),),
            )
          ],
        ),
      ),
    );
  }
}