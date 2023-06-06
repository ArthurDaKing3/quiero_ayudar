// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asociaciones_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AsociacionesRecord> _$asociacionesRecordSerializer =
    new _$AsociacionesRecordSerializer();

class _$AsociacionesRecordSerializer
    implements StructuredSerializer<AsociacionesRecord> {
  @override
  final Iterable<Type> types = const [AsociacionesRecord, _$AsociacionesRecord];
  @override
  final String wireName = 'AsociacionesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AsociacionesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.contacto;
    if (value != null) {
      result
        ..add('contacto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.fechaFundacion;
    if (value != null) {
      result
        ..add('fecha-fundacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.horario;
    if (value != null) {
      result
        ..add('horario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idAsocacion;
    if (value != null) {
      result
        ..add('id-asocacion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
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
  AsociacionesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AsociacionesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'contacto':
          result.contacto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fecha-fundacion':
          result.fechaFundacion = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'horario':
          result.horario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id-asocacion':
          result.idAsocacion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
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

class _$AsociacionesRecord extends AsociacionesRecord {
  @override
  final String? contacto;
  @override
  final String? descripcion;
  @override
  final String? direccion;
  @override
  final DateTime? fechaFundacion;
  @override
  final String? horario;
  @override
  final int? idAsocacion;
  @override
  final String? logo;
  @override
  final String? nombre;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AsociacionesRecord(
          [void Function(AsociacionesRecordBuilder)? updates]) =>
      (new AsociacionesRecordBuilder()..update(updates))._build();

  _$AsociacionesRecord._(
      {this.contacto,
      this.descripcion,
      this.direccion,
      this.fechaFundacion,
      this.horario,
      this.idAsocacion,
      this.logo,
      this.nombre,
      this.ffRef})
      : super._();

  @override
  AsociacionesRecord rebuild(
          void Function(AsociacionesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AsociacionesRecordBuilder toBuilder() =>
      new AsociacionesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AsociacionesRecord &&
        contacto == other.contacto &&
        descripcion == other.descripcion &&
        direccion == other.direccion &&
        fechaFundacion == other.fechaFundacion &&
        horario == other.horario &&
        idAsocacion == other.idAsocacion &&
        logo == other.logo &&
        nombre == other.nombre &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contacto.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, fechaFundacion.hashCode);
    _$hash = $jc(_$hash, horario.hashCode);
    _$hash = $jc(_$hash, idAsocacion.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AsociacionesRecord')
          ..add('contacto', contacto)
          ..add('descripcion', descripcion)
          ..add('direccion', direccion)
          ..add('fechaFundacion', fechaFundacion)
          ..add('horario', horario)
          ..add('idAsocacion', idAsocacion)
          ..add('logo', logo)
          ..add('nombre', nombre)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AsociacionesRecordBuilder
    implements Builder<AsociacionesRecord, AsociacionesRecordBuilder> {
  _$AsociacionesRecord? _$v;

  String? _contacto;
  String? get contacto => _$this._contacto;
  set contacto(String? contacto) => _$this._contacto = contacto;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  DateTime? _fechaFundacion;
  DateTime? get fechaFundacion => _$this._fechaFundacion;
  set fechaFundacion(DateTime? fechaFundacion) =>
      _$this._fechaFundacion = fechaFundacion;

  String? _horario;
  String? get horario => _$this._horario;
  set horario(String? horario) => _$this._horario = horario;

  int? _idAsocacion;
  int? get idAsocacion => _$this._idAsocacion;
  set idAsocacion(int? idAsocacion) => _$this._idAsocacion = idAsocacion;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AsociacionesRecordBuilder() {
    AsociacionesRecord._initializeBuilder(this);
  }

  AsociacionesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contacto = $v.contacto;
      _descripcion = $v.descripcion;
      _direccion = $v.direccion;
      _fechaFundacion = $v.fechaFundacion;
      _horario = $v.horario;
      _idAsocacion = $v.idAsocacion;
      _logo = $v.logo;
      _nombre = $v.nombre;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AsociacionesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AsociacionesRecord;
  }

  @override
  void update(void Function(AsociacionesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AsociacionesRecord build() => _build();

  _$AsociacionesRecord _build() {
    final _$result = _$v ??
        new _$AsociacionesRecord._(
            contacto: contacto,
            descripcion: descripcion,
            direccion: direccion,
            fechaFundacion: fechaFundacion,
            horario: horario,
            idAsocacion: idAsocacion,
            logo: logo,
            nombre: nombre,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
