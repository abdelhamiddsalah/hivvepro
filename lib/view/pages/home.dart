import 'package:flutter/material.dart';
import 'package:hivvepro/view/widgets/custom_appbar.dart';
import 'package:hivvepro/view/widgets/listview_notes.dart';
import 'package:hivvepro/view/widgets/showmodel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          context: context, builder: (context){
        return Showmodel();
        });
      },child: Icon(Icons.add),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              CustomAppbar(title: 'Notes',icon: Icons.search,),
              SizedBox(height: 20,),
            ListviewNotes()
            ],
          ),
        ),
      ),
    );
  }
}