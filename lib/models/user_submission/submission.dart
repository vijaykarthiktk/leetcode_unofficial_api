part of 'submissions.dart';

class _Submission {
  final String title;
  final String titleSlug;
  final String timestamp;
  final String statusDisplay;
  final String lang;

  _Submission({
    required this.title,
    required this.titleSlug,
    required this.timestamp,
    required this.statusDisplay,
    required this.lang,
  });

  factory _Submission.fromJson(Map<String, dynamic> json) {
    return _Submission(
      title: json['title'] as String,
      titleSlug: json['titleSlug'] as String,
      timestamp: json['timestamp'] as String,
      statusDisplay: json['statusDisplay'] as String,
      lang: json['lang'] as String,
    );
  }
  @override
  String toString() {
    return 'Submission(title: $title, titleSlug: $titleSlug, timestamp: $timestamp, statusDisplay: $statusDisplay, lang: $lang)';
  }
}
