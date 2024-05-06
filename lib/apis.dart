import 'package:leetcode_unofficial_api/models/lc_problem.dart';

import 'GQLQueries/contest.dart';

import 'controllers/controllers.dart';

import 'exception/exceptions.dart';
import 'models/user_data.dart';
import 'models/submit_stats.dart';
import 'models/user_badges/badge.dart';
import 'models/user_badges/badges.dart';
import 'models/user_language_and_problem_count/languages_problem_counts.dart';
import 'models/user_submission/submissions.dart';

class LeetCodeAPI {
  static late String _username;
  static bool isInitialized = false;

  static final LeetCodeAPI instance = LeetCodeAPI._internal();

  factory LeetCodeAPI() {
    return instance;
  }

  LeetCodeAPI._internal();

  static Future<void> initializeApp(String? username) async {
    if (username != null) {
      if (await _checkUserExist(username)) {
        _username = username;
        isInitialized = true;
      } else {
        throw LeetCodeAPIException(101);
      }
    }
  }

  static Future<bool> _checkUserExist(String username) async {
    try {
      await fetchUserDetails<UserData>(
        username: username,
        query: GQLQueries.userProfileQuery,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<UserData?> userData({String? username}) async {
    assert(isInitialized, throw LeetCodeAPIException(100));
    return await fetchUserDetails<UserData>(
      username: username ?? _username,
      query: GQLQueries.userProfileQuery,
    );
  }

  Future<LanguagesAndProblemCounts?> languageStats({String? username}) async {
    assert(isInitialized, throw LeetCodeAPIException(100));

    return await fetchUserDetails<LanguagesAndProblemCounts>(
      username: username ?? _username,
      query: GQLQueries.languageStats,
    );
  }

  Future<LCBadges?> userBadges({String? username}) async {
    assert(isInitialized, throw LeetCodeAPIException(100));

    return await fetchUserDetails<LCBadges>(
      username: username ?? _username,
      query: GQLQueries.userBadgeQuery,
    );
  }

  Future<LCBadge?> userActiveBadge({String? username}) async {
    assert(isInitialized, throw LeetCodeAPIException(100));

    return await fetchUserDetails<LCBadge>(
      username: username ?? _username,
      query: GQLQueries.userActiveBadgeQuery,
    );
  }

  Future<Submissions?> recentSubmissions(
      {String? username, int limit = 20}) async {
    assert(isInitialized, throw LeetCodeAPIException(100));

    return await fetchUserDetails<Submissions>(
      username: username ?? _username,
      limit: limit,
      query: GQLQueries.submissionQuery,
    );
  }

  Future<SubmitStats?> solvedProblemCount({String? username}) async {
    assert(isInitialized, throw LeetCodeAPIException(100));

    return await fetchUserDetails<SubmitStats>(
      username: username ?? _username,
      query: GQLQueries.userSolvedProblemCount,
    );
  }

  Future<Problem> dailyProblem() async {
    return await fetchSingleProblem(
      query: GQLQueries.dailyProblemQuery,
      isDaily: true,
    );
  }

  Future<Problem?> selectProblem({required String titleSlug}) async {
    return await fetchSingleProblem(
        query: GQLQueries.selectProblemQuery, titleSlug: titleSlug);
  }
}
