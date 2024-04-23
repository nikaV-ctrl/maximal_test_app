abstract class ReposRepository {
  Future<dynamic> getRepos({
    required String login,
  });
}
