import '../../entry/entry.dart';
import 'badge.dart';

class LCBadges implements LeetCodeData{

  final List<LCBadge> badges;

  LCBadges({
    required this.badges,
  });

  factory LCBadges.fromJson(Map<String, dynamic> json) {
    LCBadges badges = LCBadges(badges: []);
    for( int i =0; i < json['data']['matchedUser']["badges"].length; i ++){
      badges.badges.add(LCBadge.fromJson(json['data']['matchedUser']["badges"][i], isActiveBadge: false));
    }
    return badges;
  }

}

