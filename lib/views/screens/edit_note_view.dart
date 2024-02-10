import 'package:flutter/material.dart';
import 'package:notes/views/widgets/edite_note_body.dart';
import 'package:notes/views/widgets/note_appbar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const NoteAppBar(
              icon: Icons.check,
              title: 'Edit Note',
            ),
            SizedBox(
              height: height * .06,
            ),
            const EditNoteBody(),
          ],
        ),
      ),
    );
  }
}
