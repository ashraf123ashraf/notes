import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/const/strings.dart';
import 'package:notes/views/screens/notebody.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'poppins'),
      home: const NoteBody(),
    );
  }
}
