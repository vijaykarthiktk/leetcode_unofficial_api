import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode_unofficial_api/apis.dart';
import 'package:leetcode_unofficial_api/models/lc_problem.dart';
import 'package:leetcode_unofficial_api/models/submit_stats.dart';
import 'package:leetcode_unofficial_api/models/user_badges/badge.dart';
import 'package:leetcode_unofficial_api/models/user_badges/badges.dart';
import 'package:leetcode_unofficial_api/models/user_data.dart';
import 'package:leetcode_unofficial_api/models/user_language_and_problem_count/languages_problem_counts.dart';
import 'package:leetcode_unofficial_api/models/user_submission/submissions.dart';

void main() {
  group('Unit Tests', () {
    test('Initialization', () async {
      await LeetCodeAPI.initializeApp('votrubac');
      expect(LeetCodeAPI.isInitialized, true);
    });

    test('Fetch User Data', () async {
      await LeetCodeAPI.initializeApp('votrubac');
      final UserData? userData = await LeetCodeAPI.instance.userData();
      expect(userData, isNotNull);
    });

    test('Fetch Language Stats', () async {
      await LeetCodeAPI.initializeApp('votrubac');
      final LanguagesAndProblemCounts? languageStats = await LeetCodeAPI.instance.languageStats();
      expect(languageStats, isNotNull);
    });

    test('Fetch User Badges', () async {
      await LeetCodeAPI.initializeApp('votrubac');
      final LCBadges? userBadges = await LeetCodeAPI.instance.userBadges();
      expect(userBadges, isNotNull);
    });

    test('Fetch User Active Badge', () async {
      await LeetCodeAPI.initializeApp('votrubac');
      final LCBadge? userActiveBadge = await LeetCodeAPI.instance.userActiveBadge();
      expect(userActiveBadge, isNotNull);
    });

    test('Fetch Recent Submissions', () async {
      await LeetCodeAPI.initializeApp('votrubac');
      final Submissions? recentSubmissions = await LeetCodeAPI.instance.recentSubmissions();
      expect(recentSubmissions, isNotNull);
    });

    test('Fetch Solved Problem Count', () async {
      await LeetCodeAPI.initializeApp('votrubac');
      final SubmitStats? solvedProblemCount = await LeetCodeAPI.instance.solvedProblemCount();
      expect(solvedProblemCount, isNotNull);
    });

    test('Fetch Daily Problem', () async {
      final Problem dailyProblem = await LeetCodeAPI.instance.dailyProblem();
      expect(dailyProblem, isNotNull);
    });

    test('Fetch Selected Problem', () async {
      final Problem? selectedProblem = await LeetCodeAPI.instance.selectProblem(titleSlug: 'two-sum');
      expect(selectedProblem, isNotNull);
    });

  });

  group('Integration Tests', () {
    setUp(() async {
      await LeetCodeAPI.initializeApp('votrubac');
    });

    test('Fetch User Data', () async {
      final UserData? userData = await LeetCodeAPI.instance.userData();
      expect(userData, isNotNull);
    });

    test('Fetch Language Stats', () async {
      final LanguagesAndProblemCounts? languageStats = await LeetCodeAPI.instance.languageStats();
      expect(languageStats, isNotNull);
    });

    test('Fetch User Badges', () async {
      final LCBadges? userBadges = await LeetCodeAPI.instance.userBadges();
      expect(userBadges, isNotNull);
    });

    test('Fetch User Active Badge', () async {
      final LCBadge? userActiveBadge = await LeetCodeAPI.instance.userActiveBadge();
      expect(userActiveBadge, isNotNull);
    });

    test('Fetch Recent Submissions', () async {
      final Submissions? recentSubmissions = await LeetCodeAPI.instance.recentSubmissions();
      expect(recentSubmissions, isNotNull);
    });

    test('Fetch Solved Problem Count', () async {
      final SubmitStats? solvedProblemCount = await LeetCodeAPI.instance.solvedProblemCount();
      expect(solvedProblemCount, isNotNull);
    });

    test('Fetch Daily Problem', () async {
      final Problem dailyProblem = await LeetCodeAPI.instance.dailyProblem();
      expect(dailyProblem, isNotNull);
    });

    test('Fetch Selected Problem', () async {
      final Problem? selectedProblem = await LeetCodeAPI.instance.selectProblem(titleSlug: 'two-sum');
      expect(selectedProblem, isNotNull);
    });

  });
}