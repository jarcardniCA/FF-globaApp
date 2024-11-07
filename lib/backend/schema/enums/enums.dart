import 'package:collection/collection.dart';

enum AnswerType {
  TEXT,
  IMAGE,
  VIDEO,
}

enum QuestionType {
  SIMPLE_SELECTION,
  TRUE_FALSE,
  IMAGE_SELECTION,
  CUADRANTE,
  SIMPLE_SELECTION_IMAGE,
}

enum QuestionTypeLabels {
  Seleccion_multiple,
  Verdadero_o_falso,
  Seleccion_multiple_con_imagenes,
  Cuadrantes,
  Seleccion_simple_con_imagenes,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (AnswerType):
      return AnswerType.values.deserialize(value) as T?;
    case (QuestionType):
      return QuestionType.values.deserialize(value) as T?;
    case (QuestionTypeLabels):
      return QuestionTypeLabels.values.deserialize(value) as T?;
    default:
      return null;
  }
}
