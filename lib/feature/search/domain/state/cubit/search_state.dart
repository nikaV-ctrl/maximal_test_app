part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.waiting() = _Waiting;
  const factory SearchState.data({
    required SearchEntity searchResult,
  }) = _Data;
  const factory SearchState.error({
    required ErrorEntity error,
  }) = _Error;
}
