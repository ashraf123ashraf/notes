import 'package:flutter/material.dart';
import 'package:notes/views/widgets/bottom_sheet.dart';
import 'package:notes/views/widgets/note_appbar.dart';
import 'package:notes/views/widgets/notes_list.dart';

class NoteBody extends StatelessWidget {
  const NoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              context: context,
              builder: (context) {
                return const AddNotesBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            NoteAppBar(
              icon: Icons.search,
              title: 'Note',
            ),
            NotesList(),
          ],
        ),
      ),
    );
  }
}
