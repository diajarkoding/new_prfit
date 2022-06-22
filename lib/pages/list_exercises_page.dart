import 'package:flutter/material.dart';
import 'package:prfit/model/exercises_model.dart';
import 'package:prfit/widgets/list_exercises_card.dart';

import '../theme.dart';
import 'detail_page.dart';

class ListExercises extends StatelessWidget {
  final ExercisesModel exercisesModel;
  const ListExercises({Key? key, required this.exercisesModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, edge, 0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    exercisesModel.name,
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                const Icon(
                  Icons.search,
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      );
    }

    Widget content() {
      return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: exercisesModel.tutorialList.length,
        itemBuilder: ((context, index) {
          TutorialList tutorialList = exercisesModel.tutorialList[index];
          return ListExercisesCard(
              image: tutorialList.image,
              name: tutorialList.name,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailPage(tutorialList: tutorialList),
                  ),
                );
              });
        }),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [appBar(), content()],
        ),
      ),
    );
  }
}
