import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivvepro/controller/cubit/add_note_cubit.dart';
import 'package:hivvepro/view/widgets/button_in_showmodal.dart';
import 'package:hivvepro/view/widgets/custom_textfield1.dart';

class formInshowModal extends StatelessWidget {
  const formInshowModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AddNoteCubit>().formKey,
      child: const Column(
        children: [
          CustomTextfield1(
            text: 'Title',
            hintStyle: TextStyle(color: Color(0xff62FCD7)),
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextfield1(
            text: 'Content',
            hintStyle: TextStyle(color: Color(0xff62FCD7)),
            maxlines: 5,
          ),
          SizedBox(
            height: 25,
          ),
          ButtonInShowmodal(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}