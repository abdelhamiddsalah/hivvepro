import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivvepro/controller/cubit/add_note_cubit.dart';
import 'package:hivvepro/view/widgets/form_in_showmodal.dart';

class Showmodel extends StatelessWidget {
  const Showmodel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25, left: 10, right: 10),
      child: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => AddNoteCubit(),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                return print('failed');
              }
            },
            builder: (context, state) {
              return formInshowModal();
            },
          ),
        ),
      ),
    );
  }
}
