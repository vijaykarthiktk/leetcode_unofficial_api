
import '../entry/entry.dart';

class Problem implements LeetCodeData {
  final String id;
  final String displayId;

  final String title;
  final String titleSlug;

  final String content;
  final String difficulty;
  final int likes;
  final int dislikes;
  final List<String> hints;

  Problem({
    required this.id,
    required this.displayId,
    required this.title,
    required this.titleSlug,
    required this.content,
    required this.difficulty,
    required this.likes,
    required this.dislikes,
    required this.hints,
  });

  factory Problem.fromJson(Map<String, dynamic> json) {
    return Problem(
      id: json['questionId'],
      displayId: json['questionFrontendId'],
      title: json['title'],
      titleSlug: json['titleSlug'],
      content: json['content'],
      difficulty: json['difficulty'],
      likes: json['likes'],
      dislikes: json['dislikes'],
      hints: List<String>.from(json['hints']),
    );
  }

  @override
  String toString() {
    return 'Problem(id: $id, displayId: $displayId, title: $title, titleSlug: $titleSlug, content: $content, difficulty: $difficulty, likes: $likes, dislikes: $dislikes)';
  }
}
