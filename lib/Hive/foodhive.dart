import 'package:hive/hive.dart';

part 'foodhive.g.dart';

@HiveType(typeId: 10)
class Foodmodel extends HiveObject {
  @HiveField(0)
  bool? isbalanceddiet;

  @HiveField(1)
  String? foodconsumptiontiming;

  @HiveField(2)
  String? regularmealdescription;

  @HiveField(3)
  bool? isorganic;

  Foodmodel({
    this.isbalanceddiet,
    this.foodconsumptiontiming,
    this.regularmealdescription,
    this.isorganic,
  });
  Map<String, dynamic> toJson() => {
        "food_consumption_timing": foodconsumptiontiming,
        "regular_meal_description": regularmealdescription,
      };
}
