import 'package:flutter/material.dart';

import '../theme.dart';

class MyPlanCard extends StatelessWidget {
  final String plane;
  final String text;
  const MyPlanCard({required this.plane, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: edge,
        bottom: 10,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/plane.png',
            width: 70,
            height: 70,
          ),
          SizedBox(
            width: edge,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                plane,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: greyTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: reguler,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
