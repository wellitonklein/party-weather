// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_of_cities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListOfCitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fieldChanged,
    required TResult Function() searched,
    required TResult Function(String cityId) citySelected,
    required TResult Function() restarted,
    required TResult Function() searchWithGeolocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fieldChanged,
    TResult? Function()? searched,
    TResult? Function(String cityId)? citySelected,
    TResult? Function()? restarted,
    TResult? Function()? searchWithGeolocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fieldChanged,
    TResult Function()? searched,
    TResult Function(String cityId)? citySelected,
    TResult Function()? restarted,
    TResult Function()? searchWithGeolocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FieldChanged value) fieldChanged,
    required TResult Function(_Searched value) searched,
    required TResult Function(_CitySelected value) citySelected,
    required TResult Function(_Restarted value) restarted,
    required TResult Function(_SearchWithGeolocation value)
        searchWithGeolocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FieldChanged value)? fieldChanged,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_CitySelected value)? citySelected,
    TResult? Function(_Restarted value)? restarted,
    TResult? Function(_SearchWithGeolocation value)? searchWithGeolocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FieldChanged value)? fieldChanged,
    TResult Function(_Searched value)? searched,
    TResult Function(_CitySelected value)? citySelected,
    TResult Function(_Restarted value)? restarted,
    TResult Function(_SearchWithGeolocation value)? searchWithGeolocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfCitiesEventCopyWith<$Res> {
  factory $ListOfCitiesEventCopyWith(
          ListOfCitiesEvent value, $Res Function(ListOfCitiesEvent) then) =
      _$ListOfCitiesEventCopyWithImpl<$Res, ListOfCitiesEvent>;
}

/// @nodoc
class _$ListOfCitiesEventCopyWithImpl<$Res, $Val extends ListOfCitiesEvent>
    implements $ListOfCitiesEventCopyWith<$Res> {
  _$ListOfCitiesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FieldChangedCopyWith<$Res> {
  factory _$$_FieldChangedCopyWith(
          _$_FieldChanged value, $Res Function(_$_FieldChanged) then) =
      __$$_FieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_FieldChangedCopyWithImpl<$Res>
    extends _$ListOfCitiesEventCopyWithImpl<$Res, _$_FieldChanged>
    implements _$$_FieldChangedCopyWith<$Res> {
  __$$_FieldChangedCopyWithImpl(
      _$_FieldChanged _value, $Res Function(_$_FieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_FieldChanged(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FieldChanged extends _FieldChanged {
  const _$_FieldChanged({required this.value}) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'ListOfCitiesEvent.fieldChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldChangedCopyWith<_$_FieldChanged> get copyWith =>
      __$$_FieldChangedCopyWithImpl<_$_FieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fieldChanged,
    required TResult Function() searched,
    required TResult Function(String cityId) citySelected,
    required TResult Function() restarted,
    required TResult Function() searchWithGeolocation,
  }) {
    return fieldChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fieldChanged,
    TResult? Function()? searched,
    TResult? Function(String cityId)? citySelected,
    TResult? Function()? restarted,
    TResult? Function()? searchWithGeolocation,
  }) {
    return fieldChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fieldChanged,
    TResult Function()? searched,
    TResult Function(String cityId)? citySelected,
    TResult Function()? restarted,
    TResult Function()? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (fieldChanged != null) {
      return fieldChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FieldChanged value) fieldChanged,
    required TResult Function(_Searched value) searched,
    required TResult Function(_CitySelected value) citySelected,
    required TResult Function(_Restarted value) restarted,
    required TResult Function(_SearchWithGeolocation value)
        searchWithGeolocation,
  }) {
    return fieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FieldChanged value)? fieldChanged,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_CitySelected value)? citySelected,
    TResult? Function(_Restarted value)? restarted,
    TResult? Function(_SearchWithGeolocation value)? searchWithGeolocation,
  }) {
    return fieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FieldChanged value)? fieldChanged,
    TResult Function(_Searched value)? searched,
    TResult Function(_CitySelected value)? citySelected,
    TResult Function(_Restarted value)? restarted,
    TResult Function(_SearchWithGeolocation value)? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (fieldChanged != null) {
      return fieldChanged(this);
    }
    return orElse();
  }
}

abstract class _FieldChanged extends ListOfCitiesEvent {
  const factory _FieldChanged({required final String value}) = _$_FieldChanged;
  const _FieldChanged._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$_FieldChangedCopyWith<_$_FieldChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchedCopyWith<$Res> {
  factory _$$_SearchedCopyWith(
          _$_Searched value, $Res Function(_$_Searched) then) =
      __$$_SearchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchedCopyWithImpl<$Res>
    extends _$ListOfCitiesEventCopyWithImpl<$Res, _$_Searched>
    implements _$$_SearchedCopyWith<$Res> {
  __$$_SearchedCopyWithImpl(
      _$_Searched _value, $Res Function(_$_Searched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Searched extends _Searched {
  const _$_Searched() : super._();

  @override
  String toString() {
    return 'ListOfCitiesEvent.searched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Searched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fieldChanged,
    required TResult Function() searched,
    required TResult Function(String cityId) citySelected,
    required TResult Function() restarted,
    required TResult Function() searchWithGeolocation,
  }) {
    return searched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fieldChanged,
    TResult? Function()? searched,
    TResult? Function(String cityId)? citySelected,
    TResult? Function()? restarted,
    TResult? Function()? searchWithGeolocation,
  }) {
    return searched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fieldChanged,
    TResult Function()? searched,
    TResult Function(String cityId)? citySelected,
    TResult Function()? restarted,
    TResult Function()? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FieldChanged value) fieldChanged,
    required TResult Function(_Searched value) searched,
    required TResult Function(_CitySelected value) citySelected,
    required TResult Function(_Restarted value) restarted,
    required TResult Function(_SearchWithGeolocation value)
        searchWithGeolocation,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FieldChanged value)? fieldChanged,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_CitySelected value)? citySelected,
    TResult? Function(_Restarted value)? restarted,
    TResult? Function(_SearchWithGeolocation value)? searchWithGeolocation,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FieldChanged value)? fieldChanged,
    TResult Function(_Searched value)? searched,
    TResult Function(_CitySelected value)? citySelected,
    TResult Function(_Restarted value)? restarted,
    TResult Function(_SearchWithGeolocation value)? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched extends ListOfCitiesEvent {
  const factory _Searched() = _$_Searched;
  const _Searched._() : super._();
}

/// @nodoc
abstract class _$$_CitySelectedCopyWith<$Res> {
  factory _$$_CitySelectedCopyWith(
          _$_CitySelected value, $Res Function(_$_CitySelected) then) =
      __$$_CitySelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityId});
}

/// @nodoc
class __$$_CitySelectedCopyWithImpl<$Res>
    extends _$ListOfCitiesEventCopyWithImpl<$Res, _$_CitySelected>
    implements _$$_CitySelectedCopyWith<$Res> {
  __$$_CitySelectedCopyWithImpl(
      _$_CitySelected _value, $Res Function(_$_CitySelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
  }) {
    return _then(_$_CitySelected(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CitySelected extends _CitySelected {
  const _$_CitySelected({required this.cityId}) : super._();

  @override
  final String cityId;

  @override
  String toString() {
    return 'ListOfCitiesEvent.citySelected(cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitySelected &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitySelectedCopyWith<_$_CitySelected> get copyWith =>
      __$$_CitySelectedCopyWithImpl<_$_CitySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fieldChanged,
    required TResult Function() searched,
    required TResult Function(String cityId) citySelected,
    required TResult Function() restarted,
    required TResult Function() searchWithGeolocation,
  }) {
    return citySelected(cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fieldChanged,
    TResult? Function()? searched,
    TResult? Function(String cityId)? citySelected,
    TResult? Function()? restarted,
    TResult? Function()? searchWithGeolocation,
  }) {
    return citySelected?.call(cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fieldChanged,
    TResult Function()? searched,
    TResult Function(String cityId)? citySelected,
    TResult Function()? restarted,
    TResult Function()? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (citySelected != null) {
      return citySelected(cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FieldChanged value) fieldChanged,
    required TResult Function(_Searched value) searched,
    required TResult Function(_CitySelected value) citySelected,
    required TResult Function(_Restarted value) restarted,
    required TResult Function(_SearchWithGeolocation value)
        searchWithGeolocation,
  }) {
    return citySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FieldChanged value)? fieldChanged,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_CitySelected value)? citySelected,
    TResult? Function(_Restarted value)? restarted,
    TResult? Function(_SearchWithGeolocation value)? searchWithGeolocation,
  }) {
    return citySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FieldChanged value)? fieldChanged,
    TResult Function(_Searched value)? searched,
    TResult Function(_CitySelected value)? citySelected,
    TResult Function(_Restarted value)? restarted,
    TResult Function(_SearchWithGeolocation value)? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (citySelected != null) {
      return citySelected(this);
    }
    return orElse();
  }
}

abstract class _CitySelected extends ListOfCitiesEvent {
  const factory _CitySelected({required final String cityId}) = _$_CitySelected;
  const _CitySelected._() : super._();

  String get cityId;
  @JsonKey(ignore: true)
  _$$_CitySelectedCopyWith<_$_CitySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RestartedCopyWith<$Res> {
  factory _$$_RestartedCopyWith(
          _$_Restarted value, $Res Function(_$_Restarted) then) =
      __$$_RestartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RestartedCopyWithImpl<$Res>
    extends _$ListOfCitiesEventCopyWithImpl<$Res, _$_Restarted>
    implements _$$_RestartedCopyWith<$Res> {
  __$$_RestartedCopyWithImpl(
      _$_Restarted _value, $Res Function(_$_Restarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Restarted extends _Restarted {
  const _$_Restarted() : super._();

  @override
  String toString() {
    return 'ListOfCitiesEvent.restarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Restarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fieldChanged,
    required TResult Function() searched,
    required TResult Function(String cityId) citySelected,
    required TResult Function() restarted,
    required TResult Function() searchWithGeolocation,
  }) {
    return restarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fieldChanged,
    TResult? Function()? searched,
    TResult? Function(String cityId)? citySelected,
    TResult? Function()? restarted,
    TResult? Function()? searchWithGeolocation,
  }) {
    return restarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fieldChanged,
    TResult Function()? searched,
    TResult Function(String cityId)? citySelected,
    TResult Function()? restarted,
    TResult Function()? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (restarted != null) {
      return restarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FieldChanged value) fieldChanged,
    required TResult Function(_Searched value) searched,
    required TResult Function(_CitySelected value) citySelected,
    required TResult Function(_Restarted value) restarted,
    required TResult Function(_SearchWithGeolocation value)
        searchWithGeolocation,
  }) {
    return restarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FieldChanged value)? fieldChanged,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_CitySelected value)? citySelected,
    TResult? Function(_Restarted value)? restarted,
    TResult? Function(_SearchWithGeolocation value)? searchWithGeolocation,
  }) {
    return restarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FieldChanged value)? fieldChanged,
    TResult Function(_Searched value)? searched,
    TResult Function(_CitySelected value)? citySelected,
    TResult Function(_Restarted value)? restarted,
    TResult Function(_SearchWithGeolocation value)? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (restarted != null) {
      return restarted(this);
    }
    return orElse();
  }
}

abstract class _Restarted extends ListOfCitiesEvent {
  const factory _Restarted() = _$_Restarted;
  const _Restarted._() : super._();
}

/// @nodoc
abstract class _$$_SearchWithGeolocationCopyWith<$Res> {
  factory _$$_SearchWithGeolocationCopyWith(_$_SearchWithGeolocation value,
          $Res Function(_$_SearchWithGeolocation) then) =
      __$$_SearchWithGeolocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchWithGeolocationCopyWithImpl<$Res>
    extends _$ListOfCitiesEventCopyWithImpl<$Res, _$_SearchWithGeolocation>
    implements _$$_SearchWithGeolocationCopyWith<$Res> {
  __$$_SearchWithGeolocationCopyWithImpl(_$_SearchWithGeolocation _value,
      $Res Function(_$_SearchWithGeolocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchWithGeolocation extends _SearchWithGeolocation {
  const _$_SearchWithGeolocation() : super._();

  @override
  String toString() {
    return 'ListOfCitiesEvent.searchWithGeolocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchWithGeolocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fieldChanged,
    required TResult Function() searched,
    required TResult Function(String cityId) citySelected,
    required TResult Function() restarted,
    required TResult Function() searchWithGeolocation,
  }) {
    return searchWithGeolocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fieldChanged,
    TResult? Function()? searched,
    TResult? Function(String cityId)? citySelected,
    TResult? Function()? restarted,
    TResult? Function()? searchWithGeolocation,
  }) {
    return searchWithGeolocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fieldChanged,
    TResult Function()? searched,
    TResult Function(String cityId)? citySelected,
    TResult Function()? restarted,
    TResult Function()? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (searchWithGeolocation != null) {
      return searchWithGeolocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FieldChanged value) fieldChanged,
    required TResult Function(_Searched value) searched,
    required TResult Function(_CitySelected value) citySelected,
    required TResult Function(_Restarted value) restarted,
    required TResult Function(_SearchWithGeolocation value)
        searchWithGeolocation,
  }) {
    return searchWithGeolocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FieldChanged value)? fieldChanged,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_CitySelected value)? citySelected,
    TResult? Function(_Restarted value)? restarted,
    TResult? Function(_SearchWithGeolocation value)? searchWithGeolocation,
  }) {
    return searchWithGeolocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FieldChanged value)? fieldChanged,
    TResult Function(_Searched value)? searched,
    TResult Function(_CitySelected value)? citySelected,
    TResult Function(_Restarted value)? restarted,
    TResult Function(_SearchWithGeolocation value)? searchWithGeolocation,
    required TResult orElse(),
  }) {
    if (searchWithGeolocation != null) {
      return searchWithGeolocation(this);
    }
    return orElse();
  }
}

abstract class _SearchWithGeolocation extends ListOfCitiesEvent {
  const factory _SearchWithGeolocation() = _$_SearchWithGeolocation;
  const _SearchWithGeolocation._() : super._();
}

/// @nodoc
mixin _$ListOfCitiesState {
  String get searchText => throw _privateConstructorUsedError;
  List<CityEntity> get cities => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<CityFailure, CityEntity>> get failureOrCompanySelected =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListOfCitiesStateCopyWith<ListOfCitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfCitiesStateCopyWith<$Res> {
  factory $ListOfCitiesStateCopyWith(
          ListOfCitiesState value, $Res Function(ListOfCitiesState) then) =
      _$ListOfCitiesStateCopyWithImpl<$Res, ListOfCitiesState>;
  @useResult
  $Res call(
      {String searchText,
      List<CityEntity> cities,
      bool isLoading,
      Option<Either<CityFailure, CityEntity>> failureOrCompanySelected});
}

/// @nodoc
class _$ListOfCitiesStateCopyWithImpl<$Res, $Val extends ListOfCitiesState>
    implements $ListOfCitiesStateCopyWith<$Res> {
  _$ListOfCitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? cities = null,
    Object? isLoading = null,
    Object? failureOrCompanySelected = null,
  }) {
    return _then(_value.copyWith(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrCompanySelected: null == failureOrCompanySelected
          ? _value.failureOrCompanySelected
          : failureOrCompanySelected // ignore: cast_nullable_to_non_nullable
              as Option<Either<CityFailure, CityEntity>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListOfCitiesStateCopyWith<$Res>
    implements $ListOfCitiesStateCopyWith<$Res> {
  factory _$$_ListOfCitiesStateCopyWith(_$_ListOfCitiesState value,
          $Res Function(_$_ListOfCitiesState) then) =
      __$$_ListOfCitiesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String searchText,
      List<CityEntity> cities,
      bool isLoading,
      Option<Either<CityFailure, CityEntity>> failureOrCompanySelected});
}

/// @nodoc
class __$$_ListOfCitiesStateCopyWithImpl<$Res>
    extends _$ListOfCitiesStateCopyWithImpl<$Res, _$_ListOfCitiesState>
    implements _$$_ListOfCitiesStateCopyWith<$Res> {
  __$$_ListOfCitiesStateCopyWithImpl(
      _$_ListOfCitiesState _value, $Res Function(_$_ListOfCitiesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? cities = null,
    Object? isLoading = null,
    Object? failureOrCompanySelected = null,
  }) {
    return _then(_$_ListOfCitiesState(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrCompanySelected: null == failureOrCompanySelected
          ? _value.failureOrCompanySelected
          : failureOrCompanySelected // ignore: cast_nullable_to_non_nullable
              as Option<Either<CityFailure, CityEntity>>,
    ));
  }
}

/// @nodoc

class _$_ListOfCitiesState extends _ListOfCitiesState {
  const _$_ListOfCitiesState(
      {required this.searchText,
      required final List<CityEntity> cities,
      required this.isLoading,
      required this.failureOrCompanySelected})
      : _cities = cities,
        super._();

  @override
  final String searchText;
  final List<CityEntity> _cities;
  @override
  List<CityEntity> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  final bool isLoading;
  @override
  final Option<Either<CityFailure, CityEntity>> failureOrCompanySelected;

  @override
  String toString() {
    return 'ListOfCitiesState(searchText: $searchText, cities: $cities, isLoading: $isLoading, failureOrCompanySelected: $failureOrCompanySelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListOfCitiesState &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(
                    other.failureOrCompanySelected, failureOrCompanySelected) ||
                other.failureOrCompanySelected == failureOrCompanySelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchText,
      const DeepCollectionEquality().hash(_cities),
      isLoading,
      failureOrCompanySelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListOfCitiesStateCopyWith<_$_ListOfCitiesState> get copyWith =>
      __$$_ListOfCitiesStateCopyWithImpl<_$_ListOfCitiesState>(
          this, _$identity);
}

abstract class _ListOfCitiesState extends ListOfCitiesState {
  const factory _ListOfCitiesState(
      {required final String searchText,
      required final List<CityEntity> cities,
      required final bool isLoading,
      required final Option<Either<CityFailure, CityEntity>>
          failureOrCompanySelected}) = _$_ListOfCitiesState;
  const _ListOfCitiesState._() : super._();

  @override
  String get searchText;
  @override
  List<CityEntity> get cities;
  @override
  bool get isLoading;
  @override
  Option<Either<CityFailure, CityEntity>> get failureOrCompanySelected;
  @override
  @JsonKey(ignore: true)
  _$$_ListOfCitiesStateCopyWith<_$_ListOfCitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}
