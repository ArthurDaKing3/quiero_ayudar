// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publicaciones_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PublicacionesRecord> _$publicacionesRecordSerializer =
    new _$PublicacionesRecordSerializer();

class _$PublicacionesRecordSerializer
    implements StructuredSerializer<PublicacionesRecord> {
  @override
  final Iterable<Type> types = const [
    PublicacionesRecord,
    _$PublicacionesRecord
  ];
  @override
  final String wireName = 'PublicacionesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PublicacionesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.encabezado;
    if (value != null) {
      result
        ..add('encabezado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fundacion;
    if (value != null) {
      result
        ..add('fundacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fundacionLogo;
    if (value != null) {
      result
        ..add('fundacion-logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.horario;
    if (value != null) {
      result
        ..add('horario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenBanner;
    if (value != null) {
      result
        ..add('imagen-banner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postRef;
    if (value != null) {
      result
        ..add('post-ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.donaciones;
    if (value != null) {
      result
        ..add('donaciones')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DonacionesStruct)])));
    }
    value = object.objetosDonacion;
    if (value != null) {
      result
        ..add('objetos-donacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ObjetosDonacionStruct)])));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refAsociacion;
    if (value != null) {
      result
        ..add('ref-asociacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.listaImagenes;
    if (value != null) {
      result
        ..add('lista-imagenes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PublicacionesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PublicacionesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'encabezado':
          result.encabezado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fundacion':
          result.fundacion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fundacion-logo':
          result.fundacionLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'horario':
          result.horario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen-banner':
          result.imagenBanner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post-ref':
          result.postRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'donaciones':
          result.donaciones.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DonacionesStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'objetos-donacion':
          result.objetosDonacion.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ObjetosDonacionStruct)
              ]))! as BuiltList<Object?>);
          break;
        case 'categoria':
          result.categoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ref-asociacion':
          result.refAsociacion = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'lista-imagenes':
          result.listaImagenes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PublicacionesRecord extends PublicacionesRecord {
  @override
  final String? descripcion;
  @override
  final String? direccion;
  @override
  final String? encabezado;
  @override
  final String? fundacion;
  @override
  final String? fundacionLogo;
  @override
  final String? horario;
  @override
  final String? imagenBanner;
  @override
  final DocumentReference<Object?>? postRef;
  @override
  final BuiltList<DonacionesStruct>? donaciones;
  @override
  final BuiltList<ObjetosDonacionStruct>? objetosDonacion;
  @override
  final String? categoria;
  @override
  final DocumentReference<Object?>? refAsociacion;
  @override
  final BuiltList<String>? listaImagenes;
  @override
  final String? tags;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PublicacionesRecord(
          [void Function(PublicacionesRecordBuilder)? updates]) =>
      (new PublicacionesRecordBuilder()..update(updates))._build();

  _$PublicacionesRecord._(
      {this.descripcion,
      this.direccion,
      this.encabezado,
      this.fundacion,
      this.fundacionLogo,
      this.horario,
      this.imagenBanner,
      this.postRef,
      this.donaciones,
      this.objetosDonacion,
      this.categoria,
      this.refAsociacion,
      this.listaImagenes,
      this.tags,
      this.ffRef})
      : super._();

  @override
  PublicacionesRecord rebuild(
          void Function(PublicacionesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublicacionesRecordBuilder toBuilder() =>
      new PublicacionesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublicacionesRecord &&
        descripcion == other.descripcion &&
        direccion == other.direccion &&
        encabezado == other.encabezado &&
        fundacion == other.fundacion &&
        fundacionLogo == other.fundacionLogo &&
        horario == other.horario &&
        imagenBanner == other.imagenBanner &&
        postRef == other.postRef &&
        donaciones == other.donaciones &&
        objetosDonacion == other.objetosDonacion &&
        categoria == other.categoria &&
        refAsociacion == other.refAsociacion &&
        listaImagenes == other.listaImagenes &&
        tags == other.tags &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, encabezado.hashCode);
    _$hash = $jc(_$hash, fundacion.hashCode);
    _$hash = $jc(_$hash, fundacionLogo.hashCode);
    _$hash = $jc(_$hash, horario.hashCode);
    _$hash = $jc(_$hash, imagenBanner.hashCode);
    _$hash = $jc(_$hash, postRef.hashCode);
    _$hash = $jc(_$hash, donaciones.hashCode);
    _$hash = $jc(_$hash, objetosDonacion.hashCode);
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, refAsociacion.hashCode);
    _$hash = $jc(_$hash, listaImagenes.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PublicacionesRecord')
          ..add('descripcion', descripcion)
          ..add('direccion', direccion)
          ..add('encabezado', encabezado)
          ..add('fundacion', fundacion)
          ..add('fundacionLogo', fundacionLogo)
          ..add('horario', horario)
          ..add('imagenBanner', imagenBanner)
          ..add('postRef', postRef)
          ..add('donaciones', donaciones)
          ..add('objetosDonacion', objetosDonacion)
          ..add('categoria', categoria)
          ..add('refAsociacion', refAsociacion)
          ..add('listaImagenes', listaImagenes)
          ..add('tags', tags)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PublicacionesRecordBuilder
    implements Builder<PublicacionesRecord, PublicacionesRecordBuilder> {
  _$PublicacionesRecord? _$v;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  String? _encabezado;
  String? get encabezado => _$this._encabezado;
  set encabezado(String? encabezado) => _$this._encabezado = encabezado;

  String? _fundacion;
  String? get fundacion => _$this._fundacion;
  set fundacion(String? fundacion) => _$this._fundacion = fundacion;

  String? _fundacionLogo;
  String? get fundacionLogo => _$this._fundacionLogo;
  set fundacionLogo(String? fundacionLogo) =>
      _$this._fundacionLogo = fundacionLogo;

  String? _horario;
  String? get horario => _$this._horario;
  set horario(String? horario) => _$this._horario = horario;

  String? _imagenBanner;
  String? get imagenBanner => _$this._imagenBanner;
  set imagenBanner(String? imagenBanner) => _$this._imagenBanner = imagenBanner;

  DocumentReference<Object?>? _postRef;
  DocumentReference<Object?>? get postRef => _$this._postRef;
  set postRef(DocumentReference<Object?>? postRef) => _$this._postRef = postRef;

  ListBuilder<DonacionesStruct>? _donaciones;
  ListBuilder<DonacionesStruct> get donaciones =>
      _$this._donaciones ??= new ListBuilder<DonacionesStruct>();
  set donaciones(ListBuilder<DonacionesStruct>? donaciones) =>
      _$this._donaciones = donaciones;

  ListBuilder<ObjetosDonacionStruct>? _objetosDonacion;
  ListBuilder<ObjetosDonacionStruct> get objetosDonacion =>
      _$this._objetosDonacion ??= new ListBuilder<ObjetosDonacionStruct>();
  set objetosDonacion(ListBuilder<ObjetosDonacionStruct>? objetosDonacion) =>
      _$this._objetosDonacion = objetosDonacion;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  DocumentReference<Object?>? _refAsociacion;
  DocumentReference<Object?>? get refAsociacion => _$this._refAsociacion;
  set refAsociacion(DocumentReference<Object?>? refAsociacion) =>
      _$this._refAsociacion = refAsociacion;

  ListBuilder<String>? _listaImagenes;
  ListBuilder<String> get listaImagenes =>
      _$this._listaImagenes ??= new ListBuilder<String>();
  set listaImagenes(ListBuilder<String>? listaImagenes) =>
      _$this._listaImagenes = listaImagenes;

  String? _tags;
  String? get tags => _$this._tags;
  set tags(String? tags) => _$this._tags = tags;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PublicacionesRecordBuilder() {
    PublicacionesRecord._initializeBuilder(this);
  }

  PublicacionesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descripcion = $v.descripcion;
      _direccion = $v.direccion;
      _encabezado = $v.encabezado;
      _fundacion = $v.fundacion;
      _fundacionLogo = $v.fundacionLogo;
      _horario = $v.horario;
      _imagenBanner = $v.imagenBanner;
      _postRef = $v.postRef;
      _donaciones = $v.donaciones?.toBuilder();
      _objetosDonacion = $v.objetosDonacion?.toBuilder();
      _categoria = $v.categoria;
      _refAsociacion = $v.refAsociacion;
      _listaImagenes = $v.listaImagenes?.toBuilder();
      _tags = $v.tags;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PublicacionesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PublicacionesRecord;
  }

  @override
  void update(void Function(PublicacionesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PublicacionesRecord build() => _build();

  _$PublicacionesRecord _build() {
    _$PublicacionesRecord _$result;
    try {
      _$result = _$v ??
          new _$PublicacionesRecord._(
              descripcion: descripcion,
              direccion: direccion,
              encabezado: encabezado,
              fundacion: fundacion,
              fundacionLogo: fundacionLogo,
              horario: horario,
              imagenBanner: imagenBanner,
              postRef: postRef,
              donaciones: _donaciones?.build(),
              objetosDonacion: _objetosDonacion?.build(),
              categoria: categoria,
              refAsociacion: refAsociacion,
              listaImagenes: _listaImagenes?.build(),
              tags: tags,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'donaciones';
        _donaciones?.build();
        _$failedField = 'objetosDonacion';
        _objetosDonacion?.build();

        _$failedField = 'listaImagenes';
        _listaImagenes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PublicacionesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
