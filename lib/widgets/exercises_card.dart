import 'package:flutter/material.dart';

import '../theme.dart';

class ExercisesCard extends StatelessWidget {
  final String image;
  final String name;
  final Function() onTap;
  const ExercisesCard({
    Key? key,
    required this.image,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            // width: 50,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(),
          )
        ],
      ),
    );
  }
}
