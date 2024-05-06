import '../entry/entry.dart';

class SubmitStats implements LeetCodeData {
  final int totalSubmission;
  final int totalAttemptsCount;

  final int totalEasySubmission;
  final int totalEasyAttemptsCount;

  final int totalMediumSubmission;
  final int totalMediumAttemptsCount;

  final int totalHardSubmission;
  final int totalHardAttemptsCount;

  final int totalAcSubmission;
  final int totalAcCount;

  final int totalEasyAcSubmission;
  final int totalEasySubmittedCount;

  final int totalMediumAcSubmission;
  final int totalMediumSubmittedCount;

  final int totalHardAcSubmission;
  final int totalHardSubmittedCount;

  SubmitStats({
    required this.totalSubmission,
    required this.totalAttemptsCount,
    required this.totalEasySubmission,
    required this.totalEasyAttemptsCount,
    required this.totalMediumSubmission,
    required this.totalMediumAttemptsCount,
    required this.totalHardSubmission,
    required this.totalHardAttemptsCount,
    required this.totalAcSubmission,
    required this.totalAcCount,
    required this.totalEasyAcSubmission,
    required this.totalEasySubmittedCount,
    required this.totalMediumAcSubmission,
    required this.totalMediumSubmittedCount,
    required this.totalHardAcSubmission,
    required this.totalHardSubmittedCount,
  });

  factory SubmitStats.fromJson(Map<String, dynamic> json) {
    return SubmitStats(

      totalSubmission: json['totalSubmissionNum'][0]['submissions'],
      totalAttemptsCount: json['totalSubmissionNum'][0]['count'],

      totalEasySubmission: json['totalSubmissionNum'][1]['submissions'],
      totalEasyAttemptsCount: json['totalSubmissionNum'][1]['count'],

      totalMediumSubmission: json['totalSubmissionNum'][2]['submissions'],
      totalMediumAttemptsCount: json['totalSubmissionNum'][2]['count'],

      totalHardSubmission: json['totalSubmissionNum'][3]['submissions'],
      totalHardAttemptsCount: json['totalSubmissionNum'][3]['count'],

      totalAcSubmission: json['acSubmissionNum'][0]['submissions'],
      totalAcCount: json['acSubmissionNum'][0]['count'],

      totalEasyAcSubmission:json['acSubmissionNum'][1]['submissions'],
      totalEasySubmittedCount:json['acSubmissionNum'][1]['count'],

      totalMediumAcSubmission: json['acSubmissionNum'][2]['submissions'],
      totalMediumSubmittedCount: json['acSubmissionNum'][2]['count'],

      totalHardAcSubmission: json['acSubmissionNum'][3]['submissions'],
      totalHardSubmittedCount: json['acSubmissionNum'][3]['count'],
    );
  }

  @override
  String toString() {
    return 'SubmitStats(totalSubmission: $totalSubmission, totalAttemptsCount: $totalAttemptsCount, totalEasySubmission: $totalEasySubmission, totalEasyAttemptsCount: $totalEasyAttemptsCount, totalMediumSubmission: $totalMediumSubmission, totalMediumAttemptsCount: $totalMediumAttemptsCount, totalHardSubmission: $totalHardSubmission, totalHardAttemptsCount: $totalHardAttemptsCount, totalAcSubmission: $totalAcSubmission, totalAcCount: $totalAcCount, totalEasyAcSubmission: $totalEasyAcSubmission, totalEasySubmittedCount: $totalEasySubmittedCount, totalMediumAcSubmission: $totalMediumAcSubmission, totalMediumSubmittedCount: $totalMediumSubmittedCount, totalHardAcSubmission: $totalHardAcSubmission, totalHardSubmittedCount: $totalHardSubmittedCount)';
  }
}
