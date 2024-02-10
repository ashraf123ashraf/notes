import 'package:flutter/material.dart';

class NoteIconSearch extends StatelessWidget {
  const NoteIconSearch({super.key, this.icon});
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width * .02, vertical: height * .01),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Icon(icon),
      ),
    );
  }
}
