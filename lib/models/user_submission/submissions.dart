import '../../entry/entry.dart';
part 'submission.dart';

class Submissions implements LeetCodeData{

  final List<_Submission> submissions;

  Submissions({
    required this.submissions,
  });

  factory Submissions.fromJson(Map<String, dynamic> json) {
    Submissions submissions = Submissions(submissions: []);
    for( int i =0; i < json['data']['recentSubmissionList'].length; i ++){
      submissions.submissions.add(_Submission.fromJson(json['data']['recentSubmissionList'][i]));
    }
    return submissions;
  }

}

