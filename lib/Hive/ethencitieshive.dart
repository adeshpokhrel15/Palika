import 'package:hive/hive.dart';

part 'ethencitieshive.g.dart';

@HiveType(typeId: 6)
class EthencitiesHiveModel extends HiveObject {
  @HiveField(0)
  String? nationalismandreligion;

  @HiveField(1)
  String? nationality;

  @HiveField(2)
  String? religion;

  @HiveField(3)
  String? ethnicgroup;

  EthencitiesHiveModel({
    this.nationalismandreligion,
    this.nationality,
    this.religion,
    this.ethnicgroup,
  });
  Map<String, dynamic> toJson() => {
        "nationality": nationality,
        "religion": religion,
        "ethnic_group": ethnicgroup,
      };
}
