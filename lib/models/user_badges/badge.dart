
import '../../entry/entry.dart';

class LCBadge implements LeetCodeData {
  final String id;
  final String displayName;
  final String icon;
  final String creationDate;

  LCBadge({
    required this.id,
    required this.displayName,
    required this.icon,
    required this.creationDate,
  });

  factory LCBadge.fromJson(Map<String, dynamic> json, {bool isActiveBadge = true}) {
    if (isActiveBadge){
      return LCBadge(
        id: json['data']['matchedUser']["activeBadge"]['id'] as String,
        displayName: json['data']['matchedUser']["activeBadge"]['displayName'] as String,
        icon: json['data']['matchedUser']["activeBadge"]['icon'] as String,
        creationDate: json['data']['matchedUser']["activeBadge"]['creationDate'] as String,
      );
    } else {
      return LCBadge(
        id: json['id'] as String,
        displayName: json['displayName'] as String,
        icon: json['icon'] as String,
        creationDate: json['creationDate'] as String,
      );
    }

  }
  @override
  String toString() {
    return 'Badge{id: $id, displayName: $displayName, icon: $icon, creationDate: $creationDate}';
  }
}
