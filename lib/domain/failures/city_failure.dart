import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_failure.freezed.dart';

@freezed
sealed class CityFailure with _$CityFailure {
  const CityFailure._();

  const factory CityFailure.searchEmpty() = _SearchEmpty;

  const factory CityFailure.notFoundCity() = _NotFoundCity;

  const factory CityFailure.unexpectedCity({
    required String message,
  }) = _UnexpectedCity;

  String toMessage() {
    return switch (this) {
      _SearchEmpty() => 'A pesquisa está em branco',
      _NotFoundCity() => 'Nenhuma cidade encontrada',
      _UnexpectedCity(:final message) => message,
    };
  }
}
