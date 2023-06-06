// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objetos_donacion_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ObjetosDonacionStruct> _$objetosDonacionStructSerializer =
    new _$ObjetosDonacionStructSerializer();

class _$ObjetosDonacionStructSerializer
    implements StructuredSerializer<ObjetosDonacionStruct> {
  @override
  final Iterable<Type> types = const [
    ObjetosDonacionStruct,
    _$ObjetosDonacionStruct
  ];
  @override
  final String wireName = 'ObjetosDonacionStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ObjetosDonacionStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.idObjeto;
    if (value != null) {
      result
        ..add('id-objeto')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombreObjeto;
    if (value != null) {
      result
        ..add('nombre-objeto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidadRequerida;
    if (value != null) {
      result
        ..add('cantidad-requerida')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cantidadPendiente;
    if (value != null) {
      result
        ..add('cantidad-pendiente')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ObjetosDonacionStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ObjetosDonacionStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id-objeto':
          result.idObjeto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nombre-objeto':
          result.nombreObjeto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cantidad-requerida':
          result.cantidadRequerida = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cantidad-pendiente':
          result.cantidadPendiente = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ObjetosDonacionStruct extends ObjetosDonacionStruct {
  @override
  final int? idObjeto;
  @override
  final String? nombreObjeto;
  @override
  final int? cantidadRequerida;
  @override
  final int? cantidadPendiente;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ObjetosDonacionStruct(
          [void Function(ObjetosDonacionStructBuilder)? updates]) =>
      (new ObjetosDonacionStructBuilder()..update(updates))._build();

  _$ObjetosDonacionStruct._(
      {this.idObjeto,
      this.nombreObjeto,
      this.cantidadRequerida,
      this.cantidadPendiente,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ObjetosDonacionStruct', 'firestoreUtilData');
  }

  @override
  ObjetosDonacionStruct rebuild(
          void Function(ObjetosDonacionStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjetosDonacionStructBuilder toBuilder() =>
      new ObjetosDonacionStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjetosDonacionStruct &&
        idObjeto == other.idObjeto &&
        nombreObjeto == other.nombreObjeto &&
        cantidadRequerida == other.cantidadRequerida &&
        cantidadPendiente == other.cantidadPendiente &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idObjeto.hashCode);
    _$hash = $jc(_$hash, nombreObjeto.hashCode);
    _$hash = $jc(_$hash, cantidadRequerida.hashCode);
    _$hash = $jc(_$hash, cantidadPendiente.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjetosDonacionStruct')
          ..add('idObjeto', idObjeto)
          ..add('nombreObjeto', nombreObjeto)
          ..add('cantidadRequerida', cantidadRequerida)
          ..add('cantidadPendiente', cantidadPendiente)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ObjetosDonacionStructBuilder
    implements Builder<ObjetosDonacionStruct, ObjetosDonacionStructBuilder> {
  _$ObjetosDonacionStruct? _$v;

  int? _idObjeto;
  int? get idObjeto => _$this._idObjeto;
  set idObjeto(int? idObjeto) => _$this._idObjeto = idObjeto;

  String? _nombreObjeto;
  String? get nombreObjeto => _$this._nombreObjeto;
  set nombreObjeto(String? nombreObjeto) => _$this._nombreObjeto = nombreObjeto;

  int? _cantidadRequerida;
  int? get cantidadRequerida => _$this._cantidadRequerida;
  set cantidadRequerida(int? cantidadRequerida) =>
      _$this._cantidadRequerida = cantidadRequerida;

  int? _cantidadPendiente;
  int? get cantidadPendiente => _$this._cantidadPendiente;
  set cantidadPendiente(int? cantidadPendiente) =>
      _$this._cantidadPendiente = cantidadPendiente;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ObjetosDonacionStructBuilder() {
    ObjetosDonacionStruct._initializeBuilder(this);
  }

  ObjetosDonacionStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idObjeto = $v.idObjeto;
      _nombreObjeto = $v.nombreObjeto;
      _cantidadRequerida = $v.cantidadRequerida;
      _cantidadPendiente = $v.cantidadPendiente;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjetosDonacionStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjetosDonacionStruct;
  }

  @override
  void update(void Function(ObjetosDonacionStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjetosDonacionStruct build() => _build();

  _$ObjetosDonacionStruct _build() {
    final _$result = _$v ??
        new _$ObjetosDonacionStruct._(
            idObjeto: idObjeto,
            nombreObjeto: nombreObjeto,
            cantidadRequerida: cantidadRequerida,
            cantidadPendiente: cantidadPendiente,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'ObjetosDonacionStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
