import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'publicaciones_record.g.dart';

abstract class PublicacionesRecord
    implements Built<PublicacionesRecord, PublicacionesRecordBuilder> {
  static Serializer<PublicacionesRecord> get serializer =>
      _$publicacionesRecordSerializer;

  String? get descripcion;

  String? get direccion;

  String? get encabezado;

  String? get fundacion;

  @BuiltValueField(wireName: 'fundacion-logo')
  String? get fundacionLogo;

  String? get horario;

  @BuiltValueField(wireName: 'imagen-banner')
  String? get imagenBanner;

  @BuiltValueField(wireName: 'post-ref')
  DocumentReference? get postRef;

  BuiltList<DonacionesStruct>? get donaciones;

  @BuiltValueField(wireName: 'objetos-donacion')
  BuiltList<ObjetosDonacionStruct>? get objetosDonacion;

  String? get categoria;

  @BuiltValueField(wireName: 'ref-asociacion')
  DocumentReference? get refAsociacion;

  @BuiltValueField(wireName: 'lista-imagenes')
  BuiltList<String>? get listaImagenes;

  String? get tags;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PublicacionesRecordBuilder builder) => builder
    ..descripcion = ''
    ..direccion = ''
    ..encabezado = ''
    ..fundacion = ''
    ..fundacionLogo = ''
    ..horario = ''
    ..imagenBanner = ''
    ..donaciones = ListBuilder()
    ..objetosDonacion = ListBuilder()
    ..categoria = ''
    ..listaImagenes = ListBuilder()
    ..tags = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Publicaciones');

  static Stream<PublicacionesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PublicacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PublicacionesRecord._();
  factory PublicacionesRecord(
          [void Function(PublicacionesRecordBuilder) updates]) =
      _$PublicacionesRecord;

  static PublicacionesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPublicacionesRecordData({
  String? descripcion,
  String? direccion,
  String? encabezado,
  String? fundacion,
  String? fundacionLogo,
  String? horario,
  String? imagenBanner,
  DocumentReference? postRef,
  String? categoria,
  DocumentReference? refAsociacion,
  String? tags,
}) {
  final firestoreData = serializers.toFirestore(
    PublicacionesRecord.serializer,
    PublicacionesRecord(
      (p) => p
        ..descripcion = descripcion
        ..direccion = direccion
        ..encabezado = encabezado
        ..fundacion = fundacion
        ..fundacionLogo = fundacionLogo
        ..horario = horario
        ..imagenBanner = imagenBanner
        ..postRef = postRef
        ..donaciones = null
        ..objetosDonacion = null
        ..categoria = categoria
        ..refAsociacion = refAsociacion
        ..listaImagenes = null
        ..tags = tags,
    ),
  );

  return firestoreData;
}
