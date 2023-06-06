import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'donaciones_struct.g.dart';

abstract class DonacionesStruct
    implements Built<DonacionesStruct, DonacionesStructBuilder> {
  static Serializer<DonacionesStruct> get serializer =>
      _$donacionesStructSerializer;

  String? get nombre;

  DateTime? get fecha;

  @BuiltValueField(wireName: 'foto-perfil')
  String? get fotoPerfil;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(DonacionesStructBuilder builder) => builder
    ..nombre = ''
    ..fotoPerfil = ''
    ..firestoreUtilData = FirestoreUtilData();

  DonacionesStruct._();
  factory DonacionesStruct([void Function(DonacionesStructBuilder) updates]) =
      _$DonacionesStruct;
}

DonacionesStruct createDonacionesStruct({
  String? nombre,
  DateTime? fecha,
  String? fotoPerfil,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DonacionesStruct(
      (d) => d
        ..nombre = nombre
        ..fecha = fecha
        ..fotoPerfil = fotoPerfil
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

DonacionesStruct? updateDonacionesStruct(
  DonacionesStruct? donaciones, {
  bool clearUnsetFields = true,
}) =>
    donaciones != null
        ? (donaciones.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addDonacionesStructData(
  Map<String, dynamic> firestoreData,
  DonacionesStruct? donaciones,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (donaciones == null) {
    return;
  }
  if (donaciones.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && donaciones.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final donacionesData = getDonacionesFirestoreData(donaciones, forFieldValue);
  final nestedData = donacionesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = donaciones.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getDonacionesFirestoreData(
  DonacionesStruct? donaciones, [
  bool forFieldValue = false,
]) {
  if (donaciones == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(DonacionesStruct.serializer, donaciones);

  // Add any Firestore field values
  donaciones.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDonacionesListFirestoreData(
  List<DonacionesStruct>? donacioness,
) =>
    donacioness?.map((d) => getDonacionesFirestoreData(d, true)).toList() ?? [];
