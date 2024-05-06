part of 'controllers.dart';

Future<Problem> fetchSingleProblem(
    {required String query, String? titleSlug, bool isDaily = false}) async {
  final response = await http.post(
    Uri.parse('https://leetcode.com/graphql'),
    headers: {
      'Content-Type': 'application/json',
      'Referer': 'https://leetcode.com',
    },
    body: jsonEncode({
      'query': query,
      'variables': {
        'titleSlug': titleSlug, // search question using titleSlug
      },
    }),
  );

  final result = jsonDecode(response.body);
  if (isDaily) {
    return Problem.fromJson(
        result['data']['activeDailyCodingChallengeQuestion']['question']);
  }
  return Problem.fromJson(result['data']['question']);
}
