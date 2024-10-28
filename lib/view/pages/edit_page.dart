import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivvepro/controller/cubit/add_note_cubit.dart';
import 'package:hivvepro/view/widgets/custom_appbar.dart';
import 'package:hivvepro/view/widgets/custom_textfield1.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: SingleChildScrollView(
            child: Form(
              key: context.read<AddNoteCubit>().formKey,
              child:const Column(
                children: [
                  CustomAppbar(title: 'Edit', icon: Icons.check),
                  SizedBox(height: 20,),
                 CustomTextfield1(text: 'Title', hintStyle:TextStyle(color: Color(0xff62FCD7)),),
              SizedBox(height: 15,),
                 CustomTextfield1(text: 'Content', hintStyle:TextStyle(color: Color(0xff62FCD7)),maxlines: 5,),
                SizedBox(height: 25,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}