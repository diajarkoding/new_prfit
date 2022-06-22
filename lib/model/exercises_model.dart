// To parse this JSON data, do
//
//     final exercisesModel = exercisesModelFromJson(jsonString);

import 'dart:convert';

ExercisesModel exercisesModelFromJson(String str) =>
    ExercisesModel.fromJson(json.decode(str));

String exercisesModelToJson(ExercisesModel data) => json.encode(data.toJson());

class ExercisesModel {
  ExercisesModel({
    required this.name,
    required this.image,
    required this.tutorialList,
  });

  String name;
  String image;
  List<TutorialList> tutorialList;

  factory ExercisesModel.fromJson(Map<String, dynamic> json) => ExercisesModel(
        name: json["name"],
        image: json["image"],
        tutorialList: List<TutorialList>.from(
            json["tutorialList"].map((x) => TutorialList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "tutorialList": List<dynamic>.from(tutorialList.map((x) => x.toJson())),
      };
}

class TutorialList {
  TutorialList({
    required this.name,
    required this.image,
    required this.muscle,
    required this.equipment,
    required this.tutorial,
  });

  String name;
  String image;
  String muscle;
  String equipment;
  String tutorial;

  factory TutorialList.fromJson(Map<String, dynamic> json) => TutorialList(
        name: json["name"],
        image: json["image"],
        muscle: json["muscle"],
        equipment: json["equipment"],
        tutorial: json["tutorial"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "muscle": muscle,
        "equipment": equipment,
        "tutorial": tutorial,
      };
}
