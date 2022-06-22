import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/myplan_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome,',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Fitness Enthusiast',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Make your fitness great again',
                    style: greyTextStyle.copyWith(
                      // fontSize: 1,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/man.png',
              width: 55,
            ),
          ],
        ),
      );
    }

    Widget bannerImage() {
      return Stack(
        children: [
          Container(
            height: 180,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/plan/bodybuilder2.png'),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 180,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let's do it",
                          style: whiteTextStyle.copyWith(
                            // fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Pinang Ria Fitness',
                          style: whiteTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 11,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: whiteColor, width: 1),
                          ),
                          child: Text(
                            'Workout',
                            style: whiteTextStyle.copyWith(fontWeight: medium),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 35,
                      top: 10,
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      color: whiteColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      );
    }

    Widget myPlane() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Text(
              'My Plans',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
          Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              MyPlanCard(plane: 'Bulking', text: 'Any Exercises'),
              MyPlanCard(plane: 'Cutting', text: 'Any Exercises'),
              // MyPlanCard(plane: 'Push Pull', text: 'Any Exercises'),
              MyPlanCard(plane: 'Maintenance', text: 'Any Exercises'),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          header(),
          bannerImage(),
          myPlane(),
        ],
      ),
    );
  }
}
