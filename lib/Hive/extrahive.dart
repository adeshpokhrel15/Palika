import 'package:hive/hive.dart';

part 'extrahive.g.dart';

@HiveType(typeId: 8)
class ExtraHiveModel extends HiveObject {
  @HiveField(0)
  String? interestedfieldid;

  @HiveField(1)
  bool? istakingtraining;

  @HiveField(2)
  String? professionalstatus;

  @HiveField(3)
  String? durationofactivities;

  ExtraHiveModel({
    this.durationofactivities,
    this.interestedfieldid,
    this.istakingtraining,
    this.professionalstatus,
  });
  Map<String, dynamic> toJson() => {
        "children_eca_interested_field_0": interestedfieldid,
        "children_is_taking_training_0": istakingtraining,
        "children_professional_status_0": professionalstatus,
        "children_duration_of_activities_0": durationofactivities,
      };
}
