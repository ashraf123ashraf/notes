import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .03),
      child: SingleChildScrollView(
        child: FormNotes(height: height),
      ),
    );
  }
}

class FormNotes extends StatefulWidget {
  const FormNotes({
    super.key,
    required this.height,
  });

  final double height;

  @override
  State<FormNotes> createState() => _FormNotesState();
}

class _FormNotesState extends State<FormNotes> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formkey = GlobalKey();
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: widget.height * .02,
          ),
          CustomTextField(
            onsaved: (value) {
              title = value!;
            },
            hint: 'Title',
          ),
          SizedBox(
            height: widget.height * .02,
          ),
          CustomTextField(
            onsaved: (value) {
              content = value!;
            },
            hint: 'content',
            maxlines: 5,
          ),
          const Spacer(),
          MySheetBotton(
            name: 'Add',
            onpressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(
            height: widget.height * .04,
          ),
        ],
      ),
    );
  }
}
