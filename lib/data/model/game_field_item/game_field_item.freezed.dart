// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_field_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameFieldItem {
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameFieldItemCopyWith<GameFieldItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameFieldItemCopyWith<$Res> {
  factory $GameFieldItemCopyWith(
          GameFieldItem value, $Res Function(GameFieldItem) then) =
      _$GameFieldItemCopyWithImpl<$Res, GameFieldItem>;
  @useResult
  $Res call({int row, int column, int value});
}

/// @nodoc
class _$GameFieldItemCopyWithImpl<$Res, $Val extends GameFieldItem>
    implements $GameFieldItemCopyWith<$Res> {
  _$GameFieldItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? column = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameFieldItemCopyWith<$Res>
    implements $GameFieldItemCopyWith<$Res> {
  factory _$$_GameFieldItemCopyWith(
          _$_GameFieldItem value, $Res Function(_$_GameFieldItem) then) =
      __$$_GameFieldItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int row, int column, int value});
}

/// @nodoc
class __$$_GameFieldItemCopyWithImpl<$Res>
    extends _$GameFieldItemCopyWithImpl<$Res, _$_GameFieldItem>
    implements _$$_GameFieldItemCopyWith<$Res> {
  __$$_GameFieldItemCopyWithImpl(
      _$_GameFieldItem _value, $Res Function(_$_GameFieldItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? column = null,
    Object? value = null,
  }) {
    return _then(_$_GameFieldItem(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameFieldItem extends _GameFieldItem {
  _$_GameFieldItem(
      {required this.row, required this.column, required this.value})
      : super._();

  @override
  final int row;
  @override
  final int column;
  @override
  final int value;

  @override
  String toString() {
    return 'GameFieldItem(row: $row, column: $column, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameFieldItem &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, column, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameFieldItemCopyWith<_$_GameFieldItem> get copyWith =>
      __$$_GameFieldItemCopyWithImpl<_$_GameFieldItem>(this, _$identity);
}

abstract class _GameFieldItem extends GameFieldItem {
  factory _GameFieldItem(
      {required final int row,
      required final int column,
      required final int value}) = _$_GameFieldItem;
  _GameFieldItem._() : super._();

  @override
  int get row;
  @override
  int get column;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_GameFieldItemCopyWith<_$_GameFieldItem> get copyWith =>
      throw _privateConstructorUsedError;
}
