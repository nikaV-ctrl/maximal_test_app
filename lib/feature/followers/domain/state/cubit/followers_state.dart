part of 'followers_cubit.dart';

@freezed
class FollowersState with _$FollowersState {
  const factory FollowersState.waiting() = _Waiting;
  const factory FollowersState.data({
    required List<FollowersEntity> followers,
  }) = _Data;
  const factory FollowersState.error({
    required ErrorEntity error,
  }) = _Error;
}
