import '../entry/entry.dart';

class UserData implements LeetCodeData {
  final String? username;
  final String? name;
  final String? birthday;
  final String? avatar;
  final int? ranking;
  final int? reputation;
  final String? gitHub;
  final String? twitter;
  final String? linkedIN;
  final List<String>? websites;
  final String? country;
  final String? company;
  final String? school;
  final List<String>? skillTags;
  final String? about;
  final double? starRating;
  final int? contributionsPoints;
  final int? contributionsQuestionCount;
  final int? contributionsTestcaseCount;

  UserData({
    this.username,
    this.name,
    this.birthday,
    this.avatar,
    this.ranking,
    this.reputation,
    this.gitHub,
    this.twitter,
    this.linkedIN,
    this.websites,
    this.country,
    this.company,
    this.school,
    this.skillTags,
    this.about,
    this.starRating,
    this.contributionsPoints,
    this.contributionsQuestionCount,
    this.contributionsTestcaseCount
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      username: json['data']['matchedUser']['username'] ?? '',
      name: json['data']['matchedUser']['profile']['realName'] ?? '',
      birthday: json['data']['matchedUser']['profile']['birthday'] ?? '',
      avatar: json['data']['matchedUser']['profile']['userAvatar'] ?? '',
      ranking: json['data']['matchedUser']['profile']['ranking'] ?? 0,
      reputation: json['data']['matchedUser']['profile']['reputation'] ?? 0,
      gitHub: json['data']['matchedUser']['githubUrl'] ?? '',
      twitter: json['data']['matchedUser']['twitterUrl'] ?? '',
      linkedIN: json['data']['matchedUser']['linkedinUrl'] ?? '',
      websites: List<String>.from(json['data']['matchedUser']['profile']['websites'] ?? []),
      country: json['data']['matchedUser']['profile']['country'] ?? '',
      company: json['data']['matchedUser']['profile']['company'] ??'',
      school: json['data']['matchedUser']['profile']['school'] ?? '',
      contributionsPoints:json['data']['matchedUser']['contributions']['points'] ?? 0 ,
      contributionsQuestionCount:json['data']['matchedUser']['contributions']['questionCount'] ?? 0 ,
      contributionsTestcaseCount:json['data']['matchedUser']['contributions']['testcaseCount'] ?? 0 ,
      starRating: json['data']['matchedUser']['profile']['starRating'] ?? 0.0 ,
      skillTags: List<String>.from(json['data']['matchedUser']['profile']['skillTags'] ?? []),
      about: json['data']['matchedUser']['profile']['about'] ?? '',
    );
  }
  @override
  @override
  String toString() {
    return 'User('
        'username: $username, '
        'name: $name, '
        'birthday: $birthday, '
        'avatar: $avatar, '
        'ranking: $ranking, '
        'reputation: $reputation, '
        'gitHub: $gitHub, '
        'twitter: $twitter, '
        'linkedIN: $linkedIN, '
        'websites: $websites, '
        'country: $country, '
        'company: $company, '
        'school: $school, '
        'skillTags: $skillTags, '
        'about: $about, '
        'starRating: $starRating, '
        'contributionsPoints: $contributionsPoints, '
        'contributionsQuestionCount: $contributionsQuestionCount, '
        'contributionsTestcaseCount: $contributionsTestcaseCount'
        ')';
  }

}
