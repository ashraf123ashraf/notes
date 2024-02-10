import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          const CustomTextField(
            hint: 'edit title',
          ),
          SizedBox(
            height: height * .03,
          ),
          const CustomTextField(
            hint: 'content',
            maxlines: 6,
          )
        ],
      ),
    );
  }
}
