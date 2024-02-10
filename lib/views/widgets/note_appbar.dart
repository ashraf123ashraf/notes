import 'package:flutter/material.dart';
import 'package:notes/views/widgets/icon_search.dart';

class NoteAppBar extends StatelessWidget {
  const NoteAppBar({super.key, this.icon, this.title});
  final String? title;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
          left: width * .08, right: width * .08, top: height * .02),
      child: Row(
        children: [
          Text(
            '$title',
            style: TextStyle(fontSize: width * .08),
          ),
          const Spacer(),
          NoteIconSearch(
            icon: icon,
          ),
        ],
      ),
    );
  }
}
