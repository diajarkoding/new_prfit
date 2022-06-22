import 'package:flutter/material.dart';
import 'package:prfit/model/exercises_model.dart';
import 'package:prfit/theme.dart';

class DetailPage extends StatelessWidget {
  final TutorialList tutorialList;
  const DetailPage({Key? key, required this.tutorialList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageTutorial() {
      return Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffFFFFFF),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)]),
        child: Image.network(
          tutorialList.image,
          width: 350,
          height: 225,
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            imageTutorial(),
            ListView(
              children: [
                const SizedBox(height: 288),
                Container(
                  padding: EdgeInsets.all(edge),
                  // margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 1)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          tutorialList.name,
                          style: blackTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Text(
                              "Bagian otot : ",
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              tutorialList.muscle,
                              style: blackTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Alat : ",
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            tutorialList.equipment,
                            style: blackTextStyle.copyWith(fontSize: 15),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          "Tutorial : ",
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                      Text(
                        tutorialList.tutorial.replaceAll('\\n', '\n'),
                        style: blackTextStyle.copyWith(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Tutorialcard extends StatelessWidget {
  const Tutorialcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "TUTORIAL",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
