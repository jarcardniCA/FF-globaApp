import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

double getQuizProgress(
  List<QuestionStruct> questionList,
  int questionSelectIndex,
) {
  // get progress between 0 and 1.0 of total question quiz by questionSelectIndex
  if (questionList.isEmpty || questionSelectIndex < 0) {
    return 0.0;
  }
  final totalQuestions = questionList.length;
  if (questionSelectIndex >= totalQuestions) {
    return 1.0;
  }
  return (questionSelectIndex + 1) / totalQuestions;
}

List<UsersRecord> buscarUser(
  List<UsersRecord> user,
  String? search,
) {
  return search == null
      ? user
      : user
          .where(
              (e) => e.displayName.toLowerCase().contains(search.toLowerCase()))
          .toList();
}

List<SuscripcionesRecord> buscarSuscripciones(
  List<SuscripcionesRecord> susc,
  String? search,
) {
  return search == null
      ? susc
      : susc
          .where((e) =>
              e.nombreUsuario.toLowerCase().contains(search.toLowerCase()))
          .toList();
}

List<VentasRecord> buscarVentas(
  List<VentasRecord> ventas,
  String? search,
) {
  return search == null
      ? ventas
      : ventas
          .where((e) =>
              e.nombreUsuario.toLowerCase().contains(search.toLowerCase()))
          .toList();
}

int getQuestionNumber(int questionSelectIndex) {
  // return index + 1
  return questionSelectIndex + 1;
}

List<String> cuadrantesIndexes30() {
  return [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30"
  ];
}

bool checkAnswerCuadrante(
  List<String> answersCuadrante,
  List<String> selectedCuadrante,
) {
  if (selectedCuadrante.length != answersCuadrante.length) {
    return false;
  }

  var checked = true;

  for (var i = 0; i < selectedCuadrante.length; i++) {
    var item = selectedCuadrante[i];
    if (!answersCuadrante.contains(item)) {
      return false;
    }
  }

  return checked;
}

DateTime? daysubstract(int date) {
  // write a function to minus current time with seven days
  DateTime now = DateTime.now();
  DateTime sevenDaysAgo = now.subtract(Duration(days: date));
  return sevenDaysAgo;
}

int getIndex(
  List<AnswerStruct> answerList,
  AnswerStruct? answer,
) {
  // get index for answer
  if (answer == null) {
    return -1;
  }
  for (int i = 0; i < answerList.length; i++) {
    if (answerList[i] == answer) {
      return i;
    }
  }
  return -1;
}

DocumentReference? idform(String form) {
  return FirebaseFirestore.instance.collection('formaciones').doc(form);
}

List<CoursesRecord> buscarCursos(
  List<CoursesRecord> cursos,
  String? search,
) {
  return search == null
      ? cursos
      : cursos
          .where((e) => e.name.toLowerCase().contains(search.toLowerCase()))
          .toList();
}

List<AnswerStruct> listAnswersCuadrantes(List<String> cuadrantes) {
  return cuadrantes.map((c) => AnswerStruct(text: c, type: "TEXT")).toList();
}

DateTime? dateSevenDays() {
  // write a function to minus current time with seven days
  DateTime now = DateTime.now();
  DateTime sevenDaysAgo = now.subtract(Duration(days: 7));
  return sevenDaysAgo;
}

double? percentage(
  double? number,
  double? totalnumber,
) {
  // write a code to calculate percentage with 2  argument
  if (number == null || totalnumber == null || totalnumber == 0) {
    return null;
  }
  return (number / totalnumber) * 100;
}
