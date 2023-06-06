import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'asociaciones_record.g.dart';

abstract class AsociacionesRecord
    implements Built<AsociacionesRecord, AsociacionesRecordBuilder> {
  static Serializer<AsociacionesRecord> get serializer =>
      _$asociacionesRecordSerializer;

  String? get contacto;

  String? get descripcion;

  String? get direccion;

  @BuiltValueField(wireName: 'fecha-fundacion')
  DateTime? get fechaFundacion;

  String? get horario;

  @BuiltValueField(wireName: 'id-asocacion')
  int? get idAsocacion;

  String? get logo;

  String? get nombre;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AsociacionesRecordBuilder builder) => builder
    ..contacto = ''
    ..descripcion = ''
    ..direccion = ''
    ..horario = ''
    ..idAsocacion = 0
    ..logo = ''
    ..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Asociaciones');

  static Stream<AsociacionesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AsociacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AsociacionesRecord._();
  factory AsociacionesRecord(
          [void Function(AsociacionesRecordBuilder) updates]) =
      _$AsociacionesRecord;

  static AsociacionesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAsociacionesRecordData({
  String? contacto,
  String? descripcion,
  String? direccion,
  DateTime? fechaFundacion,
  String? horario,
  int? idAsocacion,
  String? logo,
  String? nombre,
}) {
  final firestoreData = serializers.toFirestore(
    AsociacionesRecord.serializer,
    AsociacionesRecord(
      (a) => a
        ..contacto = contacto
        ..descripcion = descripcion
        ..direccion = direccion
        ..fechaFundacion = fechaFundacion
        ..horario = horario
        ..idAsocacion = idAsocacion
        ..logo = logo
        ..nombre = nombre,
    ),
  );

  return firestoreData;
}
