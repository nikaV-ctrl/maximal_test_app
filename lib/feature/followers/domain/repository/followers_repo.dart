abstract class FollowersRepository {
  Future<dynamic> getFollowers({
    required String login,
  });
}
