import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final String imagepath;
  final String? cat;
  final int? price;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.imagepath,
    required this.cat,
    required this.price,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(imagepath!)))),
        Text(
          taskName ?? "",
          style: GoogleFonts.dekko(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          cat ?? "",
          style: GoogleFonts.dekko(
              fontSize: 20, color: Colors.black38, fontWeight: FontWeight.bold),
        ),
        Text(
          price.toString() ?? "",
          style: GoogleFonts.dekko(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}