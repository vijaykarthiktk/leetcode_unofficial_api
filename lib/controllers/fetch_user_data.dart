part of 'controllers.dart';

Future<T?> fetchUserDetails<T extends LeetCodeData>({
  required String username,
  int limit = 20,
  required String query,
}) async {
  final response = await http.post(
    Uri.parse('https://leetcode.com/graphql'),
    headers: {
      'Content-Type': 'application/json',
      'Referer': 'https://leetcode.com',
    },
    body: jsonEncode({
      'query': query,
      'variables': {
        'username': username, //username required
        'limit': limit, //only for submission
      },
    }),
  );

  final Map<String, dynamic> result = (jsonDecode(response.body));
  if (T == UserData) {
    return (UserData.fromJson(result) as T);
  } else if (T == LanguagesAndProblemCounts) {
    return (LanguagesAndProblemCounts.fromJson(result) as T);
  } else if (T == LCBadges) {
    return (LCBadges.fromJson(result) as T);
  } else if (T == LCBadge) {
    return (LCBadge.fromJson(result) as T);
  } else if (T == Submissions) {
    return (Submissions.fromJson(result) as T);
  } else if (T == SubmitStats) {
    return (SubmitStats.fromJson(result['data']["matchedUser"]["submitStats"])
        as T);
  }
  return null;
}
