import 'package:hive/hive.dart';

part 'googlehive.g.dart';

@HiveType(typeId: 11)
class GoogleHiveModel extends HiveObject {
  @HiveField(0)
  double? longitude;

  @HiveField(1)
  double? latitude;

  GoogleHiveModel({
    this.latitude,
    this.longitude,
  });
  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}
