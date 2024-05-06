part of 'languages_problem_counts.dart';


class _LanguageAndProblemCount {

  final String? languageName;
  final int? problemsSolved;

  _LanguageAndProblemCount({
    this.languageName,
    this.problemsSolved,
  });

  @override
  String toString() {
    return 'LanguageAndProblemCount(languageName: $languageName, problemsSolved: $problemsSolved)';
  }

  factory _LanguageAndProblemCount.fromJson(Map<String, dynamic> json) {
    return _LanguageAndProblemCount(
      languageName: json['languageName'] ?? '',
      problemsSolved: json['problemsSolved'] ?? 0,
    );
  }
}
