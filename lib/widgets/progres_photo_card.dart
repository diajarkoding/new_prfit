import 'package:prfit/theme.dart';
import 'package:flutter/material.dart';

class ProgressPhotoCard extends StatelessWidget {
  const ProgressPhotoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: purpleColor,
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/program.jpg'))),
    );
  }
}
