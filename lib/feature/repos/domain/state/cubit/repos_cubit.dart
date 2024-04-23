import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:max_app/app/domain/entity/error_entity.dart';
import 'package:max_app/app/domain/error_handler/api_error_handler.dart';
import 'package:max_app/feature/repos/domain/entity/repos_entity.dart';
import 'package:max_app/feature/repos/domain/repository/repos_repo.dart';

part 'repos_state.dart';
part 'repos_cubit.freezed.dart';

@Injectable()
class ReposCubit extends Cubit<ReposState> {
  final ReposRepository reposRepository;
  final ApiErrorHandler errorHandler;
  ReposCubit({
    required this.reposRepository,
    required this.errorHandler,
  }) : super(const ReposState.waiting());

  Future getRepos({
    required String login,
  }) async {
    try {
      emit(const ReposState.waiting());
      final List<ReposEntity> repos =
          await reposRepository.getRepos(login: login);
      emit(ReposState.data(repos: repos));
    } catch (error) {
      addError(error);
    }
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    final ErrorEntity errorEntity = errorHandler.handleError(error);
    emit(ReposState.error(error: errorEntity));
    super.addError(error, stackTrace);
  }
}
