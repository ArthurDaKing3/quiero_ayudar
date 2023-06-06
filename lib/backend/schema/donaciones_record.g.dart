// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donaciones_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DonacionesRecord> _$donacionesRecordSerializer =
    new _$DonacionesRecordSerializer();

class _$DonacionesRecordSerializer
    implements StructuredSerializer<DonacionesRecord> {
  @override
  final Iterable<Type> types = const [DonacionesRecord, _$DonacionesRecord];
  @override
  final String wireName = 'DonacionesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DonacionesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.estatus;
    if (value != null) {
      result
        ..add('estatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fechaDonacion;
    if (value != null) {
      result
        ..add('fecha-donacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fechaEntrega;
    if (value != null) {
      result
        ..add('fecha-entrega')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.idDonacion;
    if (value != null) {
      result
        ..add('id-donacion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombreObjetos;
    if (value != null) {
      result
        ..add('nombre-objetos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.cantidadObjetos;
    if (value != null) {
      result
        ..add('cantidad-objetos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
    value = object.direccion;
    if (value != null) {
      result
        ..add('direccion')
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
  DonacionesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DonacionesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'estatus':
          result.estatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fecha-donacion':
          result.fechaDonacion = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'fecha-entrega':
          result.fechaEntrega = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'id-donacion':
          result.idDonacion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nombre-objetos':
          result.nombreObjetos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'cantidad-objetos':
          result.cantidadObjetos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'fundacion':
          result.fundacion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fundacion-logo':
          result.fundacionLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'horario':
          result.horario = serializers.deserialize(value,
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

class _$DonacionesRecord extends DonacionesRecord {
  @override
  final int? estatus;
  @override
  final DateTime? fechaDonacion;
  @override
  final DateTime? fechaEntrega;
  @override
  final int? idDonacion;
  @override
  final BuiltList<String>? nombreObjetos;
  @override
  final BuiltList<int>? cantidadObjetos;
  @override
  final String? fundacion;
  @override
  final String? fundacionLogo;
  @override
  final String? direccion;
  @override
  final String? horario;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DonacionesRecord(
          [void Function(DonacionesRecordBuilder)? updates]) =>
      (new DonacionesRecordBuilder()..update(updates))._build();

  _$DonacionesRecord._(
      {this.estatus,
      this.fechaDonacion,
      this.fechaEntrega,
      this.idDonacion,
      this.nombreObjetos,
      this.cantidadObjetos,
      this.fundacion,
      this.fundacionLogo,
      this.direccion,
      this.horario,
      this.ffRef})
      : super._();

  @override
  DonacionesRecord rebuild(void Function(DonacionesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DonacionesRecordBuilder toBuilder() =>
      new DonacionesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonacionesRecord &&
        estatus == other.estatus &&
        fechaDonacion == other.fechaDonacion &&
        fechaEntrega == other.fechaEntrega &&
        idDonacion == other.idDonacion &&
        nombreObjetos == other.nombreObjetos &&
        cantidadObjetos == other.cantidadObjetos &&
        fundacion == other.fundacion &&
        fundacionLogo == other.fundacionLogo &&
        direccion == other.direccion &&
        horario == other.horario &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, estatus.hashCode);
    _$hash = $jc(_$hash, fechaDonacion.hashCode);
    _$hash = $jc(_$hash, fechaEntrega.hashCode);
    _$hash = $jc(_$hash, idDonacion.hashCode);
    _$hash = $jc(_$hash, nombreObjetos.hashCode);
    _$hash = $jc(_$hash, cantidadObjetos.hashCode);
    _$hash = $jc(_$hash, fundacion.hashCode);
    _$hash = $jc(_$hash, fundacionLogo.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, horario.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DonacionesRecord')
          ..add('estatus', estatus)
          ..add('fechaDonacion', fechaDonacion)
          ..add('fechaEntrega', fechaEntrega)
          ..add('idDonacion', idDonacion)
          ..add('nombreObjetos', nombreObjetos)
          ..add('cantidadObjetos', cantidadObjetos)
          ..add('fundacion', fundacion)
          ..add('fundacionLogo', fundacionLogo)
          ..add('direccion', direccion)
          ..add('horario', horario)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DonacionesRecordBuilder
    implements Builder<DonacionesRecord, DonacionesRecordBuilder> {
  _$DonacionesRecord? _$v;

  int? _estatus;
  int? get estatus => _$this._estatus;
  set estatus(int? estatus) => _$this._estatus = estatus;

  DateTime? _fechaDonacion;
  DateTime? get fechaDonacion => _$this._fechaDonacion;
  set fechaDonacion(DateTime? fechaDonacion) =>
      _$this._fechaDonacion = fechaDonacion;

  DateTime? _fechaEntrega;
  DateTime? get fechaEntrega => _$this._fechaEntrega;
  set fechaEntrega(DateTime? fechaEntrega) =>
      _$this._fechaEntrega = fechaEntrega;

  int? _idDonacion;
  int? get idDonacion => _$this._idDonacion;
  set idDonacion(int? idDonacion) => _$this._idDonacion = idDonacion;

  ListBuilder<String>? _nombreObjetos;
  ListBuilder<String> get nombreObjetos =>
      _$this._nombreObjetos ??= new ListBuilder<String>();
  set nombreObjetos(ListBuilder<String>? nombreObjetos) =>
      _$this._nombreObjetos = nombreObjetos;

  ListBuilder<int>? _cantidadObjetos;
  ListBuilder<int> get cantidadObjetos =>
      _$this._cantidadObjetos ??= new ListBuilder<int>();
  set cantidadObjetos(ListBuilder<int>? cantidadObjetos) =>
      _$this._cantidadObjetos = cantidadObjetos;

  String? _fundacion;
  String? get fundacion => _$this._fundacion;
  set fundacion(String? fundacion) => _$this._fundacion = fundacion;

  String? _fundacionLogo;
  String? get fundacionLogo => _$this._fundacionLogo;
  set fundacionLogo(String? fundacionLogo) =>
      _$this._fundacionLogo = fundacionLogo;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  String? _horario;
  String? get horario => _$this._horario;
  set horario(String? horario) => _$this._horario = horario;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DonacionesRecordBuilder() {
    DonacionesRecord._initializeBuilder(this);
  }

  DonacionesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _estatus = $v.estatus;
      _fechaDonacion = $v.fechaDonacion;
      _fechaEntrega = $v.fechaEntrega;
      _idDonacion = $v.idDonacion;
      _nombreObjetos = $v.nombreObjetos?.toBuilder();
      _cantidadObjetos = $v.cantidadObjetos?.toBuilder();
      _fundacion = $v.fundacion;
      _fundacionLogo = $v.fundacionLogo;
      _direccion = $v.direccion;
      _horario = $v.horario;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DonacionesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DonacionesRecord;
  }

  @override
  void update(void Function(DonacionesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DonacionesRecord build() => _build();

  _$DonacionesRecord _build() {
    _$DonacionesRecord _$result;
    try {
      _$result = _$v ??
          new _$DonacionesRecord._(
              estatus: estatus,
              fechaDonacion: fechaDonacion,
              fechaEntrega: fechaEntrega,
              idDonacion: idDonacion,
              nombreObjetos: _nombreObjetos?.build(),
              cantidadObjetos: _cantidadObjetos?.build(),
              fundacion: fundacion,
              fundacionLogo: fundacionLogo,
              direccion: direccion,
              horario: horario,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nombreObjetos';
        _nombreObjetos?.build();
        _$failedField = 'cantidadObjetos';
        _cantidadObjetos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DonacionesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
