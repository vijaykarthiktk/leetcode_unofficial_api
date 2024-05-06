class LeetCodeAPIException implements Exception {
  final int code;

  LeetCodeAPIException(this.code);

  @override
  String toString() {
    switch (code) {
      case 100:
        return '''
LeetCodeException: Username not initialized.
context

  Try LeetCodeAPI.initializeApp("username")
      void main() {
          runApp(const MyApp());
          LeetCodeAPI.initializeApp("username");
      }
    ''';
      case 101:
        return 'LeetCodeAPIException: User not Found';
      case 102:
        return 'LeetCodeAPIException: Error code 3 occurred';
      default:
        return 'LeetCodeAPIException: Unknown error occurred';
    }
  }
}
