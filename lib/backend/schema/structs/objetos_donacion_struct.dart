import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'objetos_donacion_struct.g.dart';

abstract class ObjetosDonacionStruct
    implements Built<ObjetosDonacionStruct, ObjetosDonacionStructBuilder> {
  static Serializer<ObjetosDonacionStruct> get serializer =>
      _$objetosDonacionStructSerializer;

  @BuiltValueField(wireName: 'id-objeto')
  int? get idObjeto;

  @BuiltValueField(wireName: 'nombre-objeto')
  String? get nombreObjeto;

  @BuiltValueField(wireName: 'cantidad-requerida')
  int? get cantidadRequerida;

  @BuiltValueField(wireName: 'cantidad-pendiente')
  int? get cantidadPendiente;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ObjetosDonacionStructBuilder builder) =>
      builder
        ..idObjeto = 0
        ..nombreObjeto = ''
        ..cantidadRequerida = 0
        ..cantidadPendiente = 0
        ..firestoreUtilData = FirestoreUtilData();

  ObjetosDonacionStruct._();
  factory ObjetosDonacionStruct(
          [void Function(ObjetosDonacionStructBuilder) updates]) =
      _$ObjetosDonacionStruct;
}

ObjetosDonacionStruct createObjetosDonacionStruct({
  int? idObjeto,
  String? nombreObjeto,
  int? cantidadRequerida,
  int? cantidadPendiente,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ObjetosDonacionStruct(
      (o) => o
        ..idObjeto = idObjeto
        ..nombreObjeto = nombreObjeto
        ..cantidadRequerida = cantidadRequerida
        ..cantidadPendiente = cantidadPendiente
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ObjetosDonacionStruct? updateObjetosDonacionStruct(
  ObjetosDonacionStruct? objetosDonacion, {
  bool clearUnsetFields = true,
}) =>
    objetosDonacion != null
        ? (objetosDonacion.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addObjetosDonacionStructData(
  Map<String, dynamic> firestoreData,
  ObjetosDonacionStruct? objetosDonacion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (objetosDonacion == null) {
    return;
  }
  if (objetosDonacion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && objetosDonacion.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final objetosDonacionData =
      getObjetosDonacionFirestoreData(objetosDonacion, forFieldValue);
  final nestedData =
      objetosDonacionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = objetosDonacion.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getObjetosDonacionFirestoreData(
  ObjetosDonacionStruct? objetosDonacion, [
  bool forFieldValue = false,
]) {
  if (objetosDonacion == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      ObjetosDonacionStruct.serializer, objetosDonacion);

  // Add any Firestore field values
  objetosDonacion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getObjetosDonacionListFirestoreData(
  List<ObjetosDonacionStruct>? objetosDonacions,
) =>
    objetosDonacions
        ?.map((o) => getObjetosDonacionFirestoreData(o, true))
        .toList() ??
    [];
