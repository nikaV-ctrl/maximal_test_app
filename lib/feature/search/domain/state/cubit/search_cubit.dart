import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:max_app/app/domain/entity/error_entity.dart';
import 'package:max_app/app/domain/error_handler/api_error_handler.dart';
import 'package:max_app/feature/search/domain/entity/search_entity.dart';
import 'package:max_app/feature/search/domain/repository/search_repo.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@Injectable()
class SearchCubit extends Cubit<SearchState> {
  final SearchRepository searchRepository;
  final ApiErrorHandler errorHandler;
  SearchCubit({
    required this.searchRepository,
    required this.errorHandler,
  }) : super(const SearchState.waiting());

  Future getSearch({
    required String q,
  }) async {
    try {
      emit(const SearchState.waiting());
      final SearchEntity searchResult = await searchRepository.getSearch(q: q);
      emit(SearchState.data(searchResult: searchResult));
    } catch (error) {
      addError(error);
    }
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    final ErrorEntity errorEntity = errorHandler.handleError(error);
    emit(SearchState.error(error: errorEntity));
    super.addError(error, stackTrace);
  }
}
