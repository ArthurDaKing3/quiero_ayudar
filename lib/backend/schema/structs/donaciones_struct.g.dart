// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donaciones_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DonacionesStruct> _$donacionesStructSerializer =
    new _$DonacionesStructSerializer();

class _$DonacionesStructSerializer
    implements StructuredSerializer<DonacionesStruct> {
  @override
  final Iterable<Type> types = const [DonacionesStruct, _$DonacionesStruct];
  @override
  final String wireName = 'DonacionesStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, DonacionesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fecha;
    if (value != null) {
      result
        ..add('fecha')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fotoPerfil;
    if (value != null) {
      result
        ..add('foto-perfil')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DonacionesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DonacionesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fecha':
          result.fecha = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'foto-perfil':
          result.fotoPerfil = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$DonacionesStruct extends DonacionesStruct {
  @override
  final String? nombre;
  @override
  final DateTime? fecha;
  @override
  final String? fotoPerfil;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$DonacionesStruct(
          [void Function(DonacionesStructBuilder)? updates]) =>
      (new DonacionesStructBuilder()..update(updates))._build();

  _$DonacionesStruct._(
      {this.nombre,
      this.fecha,
      this.fotoPerfil,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'DonacionesStruct', 'firestoreUtilData');
  }

  @override
  DonacionesStruct rebuild(void Function(DonacionesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DonacionesStructBuilder toBuilder() =>
      new DonacionesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonacionesStruct &&
        nombre == other.nombre &&
        fecha == other.fecha &&
        fotoPerfil == other.fotoPerfil &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, fecha.hashCode);
    _$hash = $jc(_$hash, fotoPerfil.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DonacionesStruct')
          ..add('nombre', nombre)
          ..add('fecha', fecha)
          ..add('fotoPerfil', fotoPerfil)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class DonacionesStructBuilder
    implements Builder<DonacionesStruct, DonacionesStructBuilder> {
  _$DonacionesStruct? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  DateTime? _fecha;
  DateTime? get fecha => _$this._fecha;
  set fecha(DateTime? fecha) => _$this._fecha = fecha;

  String? _fotoPerfil;
  String? get fotoPerfil => _$this._fotoPerfil;
  set fotoPerfil(String? fotoPerfil) => _$this._fotoPerfil = fotoPerfil;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  DonacionesStructBuilder() {
    DonacionesStruct._initializeBuilder(this);
  }

  DonacionesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _fecha = $v.fecha;
      _fotoPerfil = $v.fotoPerfil;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DonacionesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DonacionesStruct;
  }

  @override
  void update(void Function(DonacionesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DonacionesStruct build() => _build();

  _$DonacionesStruct _build() {
    final _$result = _$v ??
        new _$DonacionesStruct._(
            nombre: nombre,
            fecha: fecha,
            fotoPerfil: fotoPerfil,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'DonacionesStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
