// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:hive/hive.dart';

part 'homehive.g.dart';

@HiveType(typeId: 19)
class HomeHiveModel extends HiveObject {
  @HiveField(0)
  String? homeid;

  @HiveField(1)
  String? homename;

  @HiveField(2)
  String? homeaddress;

  HomeHiveModel({
    this.homeid,
    this.homename,
    this.homeaddress,
  });

  HomeHiveModel copyWith({
    String? homeid,
    String? homename,
    String? homeaddress,
  }) {
    return HomeHiveModel(
      homeid: homeid ?? this.homeid,
      homename: homename ?? this.homename,
      homeaddress: homeaddress ?? this.homeaddress,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homeid': homeid,
      'homename': homename,
      'homeaddress': homeaddress,
    };
  }

  factory HomeHiveModel.fromMap(Map<String, dynamic> map) {
    return HomeHiveModel(
      homeid: map['homeid'] != null ? map['homeid'] as String : null,
      homename: map['homename'] != null ? map['homename'] as String : null,
      homeaddress:
          map['homeaddress'] != null ? map['homeaddress'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeHiveModel.fromJson(String source) =>
      HomeHiveModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'HomeHiveModel(homeid: $homeid, homename: $homename, homeaddress: $homeaddress)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomeHiveModel &&
        other.homeid == homeid &&
        other.homename == homename &&
        other.homeaddress == homeaddress;
  }

  @override
  int get hashCode =>
      homeid.hashCode ^ homename.hashCode ^ homeaddress.hashCode;
}
