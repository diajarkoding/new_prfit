import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/exercises_model.dart';

class Database {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  static final CollectionReference _exercisesRef =
      FirebaseFirestore.instance.collection('exercises');

  static CollectionReference get exercisesRef => _exercisesRef;

  static Future<List<QueryDocumentSnapshot>> get fetchExercises =>
      _fetchExercises();

  static Future<List<QueryDocumentSnapshot>> _fetchExercises() async {
    try {
      var categories = await _exercisesRef.get();
      return categories.docs;
    } catch (e) {
      // print(e);
      rethrow;
    }
  }

  Future<List<ExercisesModel>> getExercises() async {
    try {
      List<QueryDocumentSnapshot> result = await fetchExercises;
      List<ExercisesModel> exercises = result.map((e) {
        return ExercisesModel.fromJson(e.data() as Map<String, dynamic>);
      }).toList();
      return exercises;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
