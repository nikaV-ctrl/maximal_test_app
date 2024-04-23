part of 'repos_cubit.dart';

@freezed
class ReposState with _$ReposState {
  const factory ReposState.waiting() = _Waiting;
  const factory ReposState.data({
    required List<ReposEntity> repos,
  }) = _Data;
  const factory ReposState.error({
    required ErrorEntity error,
  }) = _Error;
}
