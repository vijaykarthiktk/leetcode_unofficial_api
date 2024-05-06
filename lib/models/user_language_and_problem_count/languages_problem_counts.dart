import '../../entry/entry.dart';
part 'language_problem_count.dart';

class LanguagesAndProblemCounts implements LeetCodeData{

 final List<_LanguageAndProblemCount> languages;

 LanguagesAndProblemCounts({
   required this.languages,
  });

  factory LanguagesAndProblemCounts.fromJson(Map<String, dynamic> json) {
    LanguagesAndProblemCounts language = LanguagesAndProblemCounts(languages: []);
    for( int i =0; i < json['data']['matchedUser']['languageProblemCount'].length; i ++){
      language.languages.add(_LanguageAndProblemCount.fromJson(json['data']['matchedUser']['languageProblemCount'][i]));
    }
    return language;
  }

}

