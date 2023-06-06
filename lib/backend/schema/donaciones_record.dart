import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'donaciones_record.g.dart';

abstract class DonacionesRecord
    implements Built<DonacionesRecord, DonacionesRecordBuilder> {
  static Serializer<DonacionesRecord> get serializer =>
      _$donacionesRecordSerializer;

  int? get estatus;

  @BuiltValueField(wireName: 'fecha-donacion')
  DateTime? get fechaDonacion;

  @BuiltValueField(wireName: 'fecha-entrega')
  DateTime? get fechaEntrega;

  @BuiltValueField(wireName: 'id-donacion')
  int? get idDonacion;

  @BuiltValueField(wireName: 'nombre-objetos')
  BuiltList<String>? get nombreObjetos;

  @BuiltValueField(wireName: 'cantidad-objetos')
  BuiltList<int>? get cantidadObjetos;

  String? get fundacion;

  @BuiltValueField(wireName: 'fundacion-logo')
  String? get fundacionLogo;

  String? get direccion;

  String? get horario;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DonacionesRecordBuilder builder) => builder
    ..estatus = 0
    ..idDonacion = 0
    ..nombreObjetos = ListBuilder()
    ..cantidadObjetos = ListBuilder()
    ..fundacion = ''
    ..fundacionLogo = ''
    ..direccion = ''
    ..horario = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Donaciones');

  static Stream<DonacionesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DonacionesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DonacionesRecord._();
  factory DonacionesRecord([void Function(DonacionesRecordBuilder) updates]) =
      _$DonacionesRecord;

  static DonacionesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDonacionesRecordData({
  int? estatus,
  DateTime? fechaDonacion,
  DateTime? fechaEntrega,
  int? idDonacion,
  String? fundacion,
  String? fundacionLogo,
  String? direccion,
  String? horario,
}) {
  final firestoreData = serializers.toFirestore(
    DonacionesRecord.serializer,
    DonacionesRecord(
      (d) => d
        ..estatus = estatus
        ..fechaDonacion = fechaDonacion
        ..fechaEntrega = fechaEntrega
        ..idDonacion = idDonacion
        ..nombreObjetos = null
        ..cantidadObjetos = null
        ..fundacion = fundacion
        ..fundacionLogo = fundacionLogo
        ..direccion = direccion
        ..horario = horario,
    ),
  );

  return firestoreData;
}
