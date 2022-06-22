import 'package:prfit/pages/list_exercises_page.dart';
import 'package:prfit/services/database.dart';
import 'package:prfit/theme.dart';
import 'package:flutter/material.dart';

import '../model/exercises_model.dart';
import '../widgets/exercises_card.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(edge, 20, edge, 0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Exercise',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                const Icon(
                  Icons.flag,
                  size: 25,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'MY GOALS',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 1,
          )
        ],
      );
    }

    content() {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: FutureBuilder<List<ExercisesModel>>(
            future: Database().getExercises(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35,
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (snapshot.hasData) {
                List<ExercisesModel> exercisesList = snapshot.data!;
                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    childAspectRatio: 0.85,
                  ),
                  itemCount: exercisesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExercisesCard(
                      image: exercisesList[index].image,
                      name: exercisesList[index].name,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListExercises(
                              exercisesModel: exercisesList[index],
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              } else {
                return const Center(
                  child: Text('Tidak ada data'),
                );
              }
            }),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          appBar(),
          content(),
        ],
      ),
    );
  }
}
