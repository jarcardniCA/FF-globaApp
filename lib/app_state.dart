import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userLives = prefs.getInt('ff_userLives') ?? _userLives;
    });
    _safeInit(() {
      _userScore = prefs.getInt('ff_userScore') ?? _userScore;
    });
    _safeInit(() {
      _userErrors = prefs.getInt('ff_userErrors') ?? _userErrors;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _ShowCurso = false;
  bool get ShowCurso => _ShowCurso;
  set ShowCurso(bool value) {
    _ShowCurso = value;
  }

  bool _ShowTema = false;
  bool get ShowTema => _ShowTema;
  set ShowTema(bool value) {
    _ShowTema = value;
  }

  int _userLives = 4;
  int get userLives => _userLives;
  set userLives(int value) {
    _userLives = value;
    prefs.setInt('ff_userLives', value);
  }

  int _userScore = 0;
  int get userScore => _userScore;
  set userScore(int value) {
    _userScore = value;
    prefs.setInt('ff_userScore', value);
  }

  List<AnswerStruct> _defaultAnswerForSimpleSelection = [
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"#1\",\"image_url\":\"\",\"video\":\"\",\"type\":\"TEXT\"}')),
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"#2\",\"image_url\":\"\",\"video\":\"\",\"type\":\"TEXT\"}')),
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"#3\",\"image_url\":\"\",\"video\":\"\",\"type\":\"TEXT\"}')),
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"#4\",\"image_url\":\"\",\"video\":\"\",\"type\":\"TEXT\"}'))
  ];
  List<AnswerStruct> get defaultAnswerForSimpleSelection =>
      _defaultAnswerForSimpleSelection;
  set defaultAnswerForSimpleSelection(List<AnswerStruct> value) {
    _defaultAnswerForSimpleSelection = value;
  }

  void addToDefaultAnswerForSimpleSelection(AnswerStruct value) {
    defaultAnswerForSimpleSelection.add(value);
  }

  void removeFromDefaultAnswerForSimpleSelection(AnswerStruct value) {
    defaultAnswerForSimpleSelection.remove(value);
  }

  void removeAtIndexFromDefaultAnswerForSimpleSelection(int index) {
    defaultAnswerForSimpleSelection.removeAt(index);
  }

  void updateDefaultAnswerForSimpleSelectionAtIndex(
    int index,
    AnswerStruct Function(AnswerStruct) updateFn,
  ) {
    defaultAnswerForSimpleSelection[index] =
        updateFn(_defaultAnswerForSimpleSelection[index]);
  }

  void insertAtIndexInDefaultAnswerForSimpleSelection(
      int index, AnswerStruct value) {
    defaultAnswerForSimpleSelection.insert(index, value);
  }

  List<AnswerStruct> _defaultAnswerForTrueFalse = [
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"Verdadero\",\"image_url\":\"\",\"video\":\"\",\"type\":\"TEXT\"}')),
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"Falso\",\"image_url\":\"\",\"video\":\"\",\"type\":\"TEXT\"}'))
  ];
  List<AnswerStruct> get defaultAnswerForTrueFalse =>
      _defaultAnswerForTrueFalse;
  set defaultAnswerForTrueFalse(List<AnswerStruct> value) {
    _defaultAnswerForTrueFalse = value;
  }

  void addToDefaultAnswerForTrueFalse(AnswerStruct value) {
    defaultAnswerForTrueFalse.add(value);
  }

  void removeFromDefaultAnswerForTrueFalse(AnswerStruct value) {
    defaultAnswerForTrueFalse.remove(value);
  }

  void removeAtIndexFromDefaultAnswerForTrueFalse(int index) {
    defaultAnswerForTrueFalse.removeAt(index);
  }

  void updateDefaultAnswerForTrueFalseAtIndex(
    int index,
    AnswerStruct Function(AnswerStruct) updateFn,
  ) {
    defaultAnswerForTrueFalse[index] =
        updateFn(_defaultAnswerForTrueFalse[index]);
  }

  void insertAtIndexInDefaultAnswerForTrueFalse(int index, AnswerStruct value) {
    defaultAnswerForTrueFalse.insert(index, value);
  }

  List<AnswerStruct> _defaultAnswerForImageSelection = [
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"\",\"image_url\":\"https://firebasestorage.googleapis.com/v0/b/globa-app-53c40.appspot.com/o/Captura_de_Pantalla_2024-05-02_a_la(s)_18.09.26.png?alt=media&token=d4cbd3e5-110a-4501-99b4-4d6a4ab29422\",\"video\":\"\",\"type\":\"IMAGE\"}')),
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"\",\"image_url\":\"https://firebasestorage.googleapis.com/v0/b/globa-app-53c40.appspot.com/o/Captura_de_Pantalla_2024-05-02_a_la(s)_18.09.26.png?alt=media&token=d4cbd3e5-110a-4501-99b4-4d6a4ab29422\",\"video\":\"\",\"type\":\"IMAGE\"}')),
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"\",\"image_url\":\"https://firebasestorage.googleapis.com/v0/b/globa-app-53c40.appspot.com/o/Captura_de_Pantalla_2024-05-02_a_la(s)_18.09.26.png?alt=media&token=d4cbd3e5-110a-4501-99b4-4d6a4ab29422\",\"video\":\"\",\"type\":\"IMAGE\"}')),
    AnswerStruct.fromSerializableMap(jsonDecode(
        '{\"text\":\"\",\"image_url\":\"https://firebasestorage.googleapis.com/v0/b/globa-app-53c40.appspot.com/o/Captura_de_Pantalla_2024-05-02_a_la(s)_18.09.26.png?alt=media&token=d4cbd3e5-110a-4501-99b4-4d6a4ab29422\",\"video\":\"\",\"type\":\"IMAGE\"}'))
  ];
  List<AnswerStruct> get defaultAnswerForImageSelection =>
      _defaultAnswerForImageSelection;
  set defaultAnswerForImageSelection(List<AnswerStruct> value) {
    _defaultAnswerForImageSelection = value;
  }

  void addToDefaultAnswerForImageSelection(AnswerStruct value) {
    defaultAnswerForImageSelection.add(value);
  }

  void removeFromDefaultAnswerForImageSelection(AnswerStruct value) {
    defaultAnswerForImageSelection.remove(value);
  }

  void removeAtIndexFromDefaultAnswerForImageSelection(int index) {
    defaultAnswerForImageSelection.removeAt(index);
  }

  void updateDefaultAnswerForImageSelectionAtIndex(
    int index,
    AnswerStruct Function(AnswerStruct) updateFn,
  ) {
    defaultAnswerForImageSelection[index] =
        updateFn(_defaultAnswerForImageSelection[index]);
  }

  void insertAtIndexInDefaultAnswerForImageSelection(
      int index, AnswerStruct value) {
    defaultAnswerForImageSelection.insert(index, value);
  }

  int _userErrors = 0;
  int get userErrors => _userErrors;
  set userErrors(int value) {
    _userErrors = value;
    prefs.setInt('ff_userErrors', value);
  }

  List<int> _linex = [];
  List<int> get linex => _linex;
  set linex(List<int> value) {
    _linex = value;
  }

  void addToLinex(int value) {
    linex.add(value);
  }

  void removeFromLinex(int value) {
    linex.remove(value);
  }

  void removeAtIndexFromLinex(int index) {
    linex.removeAt(index);
  }

  void updateLinexAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    linex[index] = updateFn(_linex[index]);
  }

  void insertAtIndexInLinex(int index, int value) {
    linex.insert(index, value);
  }

  List<int> _liney = [];
  List<int> get liney => _liney;
  set liney(List<int> value) {
    _liney = value;
  }

  void addToLiney(int value) {
    liney.add(value);
  }

  void removeFromLiney(int value) {
    liney.remove(value);
  }

  void removeAtIndexFromLiney(int index) {
    liney.removeAt(index);
  }

  void updateLineyAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    liney[index] = updateFn(_liney[index]);
  }

  void insertAtIndexInLiney(int index, int value) {
    liney.insert(index, value);
  }

  AnswerStruct _answerTestEdited = AnswerStruct.fromSerializableMap(
      jsonDecode('{\"text\":\"test\",\"type\":\"TEXT\"}'));
  AnswerStruct get answerTestEdited => _answerTestEdited;
  set answerTestEdited(AnswerStruct value) {
    _answerTestEdited = value;
  }

  void updateAnswerTestEditedStruct(Function(AnswerStruct) updateFn) {
    updateFn(_answerTestEdited);
  }

  int _Listado = 0;
  int get Listado => _Listado;
  set Listado(int value) {
    _Listado = value;
  }

  int _avanzar = 0;
  int get avanzar => _avanzar;
  set avanzar(int value) {
    _avanzar = value;
  }

  int _resultado = 0;
  int get resultado => _resultado;
  set resultado(int value) {
    _resultado = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
