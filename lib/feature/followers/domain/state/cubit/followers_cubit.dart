import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:max_app/app/domain/entity/error_entity.dart';
import 'package:max_app/app/domain/error_handler/api_error_handler.dart';
import 'package:max_app/feature/followers/domain/entity/followers_entity.dart';
import 'package:max_app/feature/followers/domain/repository/followers_repo.dart';

part 'followers_state.dart';
part 'followers_cubit.freezed.dart';

@Injectable()
class FollowersCubit extends Cubit<FollowersState> {
  final FollowersRepository followersRepository;
  final ApiErrorHandler errorHandler;
  FollowersCubit({
    required this.followersRepository,
    required this.errorHandler,
  }) : super(const FollowersState.waiting());

  Future getFollowers({
    required String login,
  }) async {
    try {
      emit(const FollowersState.waiting());
      final List<FollowersEntity> followers =
          await followersRepository.getFollowers(login: login);
      emit(FollowersState.data(followers: followers, login: login));
    } catch (error) {
      addError(error);
    }
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    final ErrorEntity errorEntity = errorHandler.handleError(error);
    emit(FollowersState.error(error: errorEntity));
    super.addError(error, stackTrace);
  }
}
