import 'package:flutter/material.dart';

class MySheetBotton extends StatelessWidget {
  const MySheetBotton({super.key, this.name, this.onpressed});
  final String? name;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(width, height * .06),
        ),
        backgroundColor: const MaterialStatePropertyAll(Colors.cyan),
      ),
      onPressed: onpressed,
      child: Text(
        name!,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
