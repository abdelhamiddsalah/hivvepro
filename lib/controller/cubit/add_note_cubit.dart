import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hivvepro/model/note_model.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  final formKey = GlobalKey<FormState>(); 
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel notemodel)async{
    emit(AddNoteLoading());
   try {
  var box= Hive.box<NoteModel>('box');
 await box.add(notemodel);
 emit(AddNoteSuccess());
}  catch (e) {
  emit(AddNoteFailure(errorMessage: 'error'));
}
  }
}
