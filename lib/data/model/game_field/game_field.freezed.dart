// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameField {
  Map<int, List<GameFieldItem>> get field => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameFieldCopyWith<GameField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameFieldCopyWith<$Res> {
  factory $GameFieldCopyWith(GameField value, $Res Function(GameField) then) =
      _$GameFieldCopyWithImpl<$Res, GameField>;
  @useResult
  $Res call({Map<int, List<GameFieldItem>> field});
}

/// @nodoc
class _$GameFieldCopyWithImpl<$Res, $Val extends GameField>
    implements $GameFieldCopyWith<$Res> {
  _$GameFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as Map<int, List<GameFieldItem>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameFieldCopyWith<$Res> implements $GameFieldCopyWith<$Res> {
  factory _$$_GameFieldCopyWith(
          _$_GameField value, $Res Function(_$_GameField) then) =
      __$$_GameFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, List<GameFieldItem>> field});
}

/// @nodoc
class __$$_GameFieldCopyWithImpl<$Res>
    extends _$GameFieldCopyWithImpl<$Res, _$_GameField>
    implements _$$_GameFieldCopyWith<$Res> {
  __$$_GameFieldCopyWithImpl(
      _$_GameField _value, $Res Function(_$_GameField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_$_GameField(
      field: null == field
          ? _value._field
          : field // ignore: cast_nullable_to_non_nullable
              as Map<int, List<GameFieldItem>>,
    ));
  }
}

/// @nodoc

class _$_GameField extends _GameField {
  _$_GameField({required final Map<int, List<GameFieldItem>> field})
      : _field = field,
        super._();

  final Map<int, List<GameFieldItem>> _field;
  @override
  Map<int, List<GameFieldItem>> get field {
    if (_field is EqualUnmodifiableMapView) return _field;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_field);
  }

  @override
  String toString() {
    return 'GameField(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameField &&
            const DeepCollectionEquality().equals(other._field, _field));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_field));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameFieldCopyWith<_$_GameField> get copyWith =>
      __$$_GameFieldCopyWithImpl<_$_GameField>(this, _$identity);
}

abstract class _GameField extends GameField {
  factory _GameField({required final Map<int, List<GameFieldItem>> field}) =
      _$_GameField;
  _GameField._() : super._();

  @override
  Map<int, List<GameFieldItem>> get field;
  @override
  @JsonKey(ignore: true)
  _$$_GameFieldCopyWith<_$_GameField> get copyWith =>
      throw _privateConstructorUsedError;
}
