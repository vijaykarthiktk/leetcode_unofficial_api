<p align="center">
  <img src="https://ziadoua.github.io/m3-Markdown-Badges/badges/Flutter/flutter2.svg">
  <img src="https://ziadoua.github.io/m3-Markdown-Badges/badges/Dart/dart2.svg">
</p>
<p align="center">
  <img src="https://m3-markdown-badges.vercel.app/issues/8/3/vijaykarthiktk/leetcode_unofficial_api"> <img src="https://m3-markdown-badges.vercel.app/stars/8/3/vijaykarthiktk/leetcode_unofficial_api">
</p>


# LeetCode Unofficial API

A Dart package providing an unofficial API for interacting with LeetCode. This package allows you to fetch user details, language statistics, user badges, recent submissions, solved problem counts, and more.

## Features:

**Scrape problem data:** Access problem titles, difficulties, categories, acceptance rates, and potentially other publicly available information (subject to LeetCode's website structure changes).

**Retrieve user data:** Fetch details like profile information, language-wise problem counts, badges earned, recent submissions, and solved problem count.

**Get problem details:** Obtain information about the daily challenge problem or a specific problem by its title slug.

**Lightweight and flexible:** Designed for ease of use in various programming environments.

**Unofficial and community-driven:** Continuously maintained and improved by the developer community.

## Disclaimer:

**Unofficial:** This API is not affiliated with or endorsed by LeetCode.

**Respectful usage:** Use responsibly and ethically, adhering to LeetCode's terms of service and avoiding excessive scraping that could overload their servers.

**Rate limiting:** Be prepared to implement rate limiting mechanisms in your code to prevent overwhelming LeetCode's infrastructure. LeetCode may throttle requests or block IP addresses if usage patterns violate their guidelines.


## Installation

To use this package, add `leetcode_api` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  leetcode_api: ^1.0.0
  ```
Then, run:

```bash
$ flutter pub get
```
## Usage

### Import the package:

```dart
import 'package:leetcode_api/leetcode_api.dart';
```

Initialize the API with your LeetCode username:

```dart
await LeetCodeAPI.initializeApp('your_username');
```

Now, you can use the provided methods to interact with the LeetCode API:

```dart
final UserData? userData = await LeetCodeAPI.instance.userData();
final LanguagesAndProblemCounts? = await LeetCodeAPI.instance.languageStats();
final LCBadges? userBadges = await LeetCodeAPI.instance.userBadges();
final LCBadge? userActiveBadge = await LeetCodeAPI.instance.userActiveBadge();
final Submissions? recentSubmissions = await LeetCodeAPI.instance.recentSubmissions();
final SubmitStats? solvedProblemCount = await LeetCodeAPI.instance.solvedProblemCount();
final Problem dailyProblem = await LeetCodeAPI.instance.dailyProblem();
final Problem selectedProblem = await LeetCodeAPI.instance.selectProblem(titleSlug: 'two-sum');
```
## Methods

### `initializeApp`
Initialize the LeetCode API with your username.

```dart
await LeetCodeAPI.initializeApp('your_username');
```
### `userData`
Fetch user details.

```dart
final UserData ?userData = await LeetCodeAPI.instance.userData();
```

### `languageStats`
Fetch language statistics.

```dart
final LanguagesAndProblemCounts? languageStats = await LeetCodeAPI.instance.languageStats();
```

### `userBadges`
Fetch user badges.

```dart
final LCBadges? userBadges = await LeetCodeAPI.instance.userBadges();
```
### `userActiveBadge`
Fetch user's active badge.

```dart
final  LCBadge? userActiveBadge = await LeetCodeAPI.instance.userActiveBadge();
```

### `recentSubmissions`
Fetch recent submissions.

```dart
final Submissions? recentSubmissions = await LeetCodeAPI.instance.recentSubmissions();
```
### `solvedProblemCount`
Fetch the count of solved problems.

```dart
final SubmitStats? solvedProblemCount = await LeetCodeAPI.instance.solvedProblemCount();
```
### `dailyProblem`
Fetch the daily problem.

```dart
final Problem? dailyProblem = await LeetCodeAPI.instance.dailyProblem();
```
### `selectProblem`
Fetch a specific problem by its title slug.

```dart
final Problem? selectedProblem = await LeetCodeAPI.instance.selectProblem(titleSlug: 'problem_title_slug');
```
## Exception Handling

The API methods may throw LeetCodeAPIException if not initialized or if the user does not exist.

```dart
try {
  // API method calls
} on LeetCodeAPIException catch (e) {
  print('LeetCode API Exception: ${e.errorCode}');
}
```

### Contributing:

We welcome contributions from the community! Feel free to submit pull requests with enhancements, bug fixes, or additional features.
<p align="center">
  <img src="https://ziadoua.github.io/m3-Markdown-Badges/badges/LicenceMIT/licencemit2.svg">
</p>
