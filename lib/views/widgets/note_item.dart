import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:notes/views/screens/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditNoteView()),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * .02, vertical: height * .01),
        child: Container(
          padding: EdgeInsets.only(
              left: width * .02, top: height * .03, bottom: height * .03),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xffffcb7a)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: width * .07, color: Colors.black),
                ),
                subtitle: Text(
                  'Build my notse is ashraf notes',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: width * .04),
                ),
                trailing: IconButton(
                  iconSize: width * .055,
                  onPressed: () {},
                  icon: const Icon(
                    color: Colors.black,
                    FontAwesomeIcons.trash,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * .03, right: width * .04),
                child: Text(
                  '21 march 2022',
                  style: TextStyle(color: Colors.black.withOpacity(.4)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
