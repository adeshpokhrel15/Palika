import 'package:hive/hive.dart';

part 'expensshive.g.dart';

@HiveType(typeId: 7)
class ExpenssHiveModel extends HiveObject {
  @HiveField(0)
  int? totalmonthlyincome;

  @HiveField(1)
  String? incomesource;

  @HiveField(2)
  String? incomesourceman;

  @HiveField(3)
  String? expensecategory;

  @HiveField(4)
  double? totalexpense;

  ExpenssHiveModel({
    this.totalmonthlyincome,
    this.incomesource,
    this.incomesourceman,
    this.expensecategory,
    this.totalexpense,
  });

  Map<String, dynamic> toJson() => {
        "total_monthly_income": totalmonthlyincome,
        "income_source": incomesource,
        "income_source_main": incomesourceman,
        "expense_category": expensecategory,
        "total_expense": totalexpense,
      };
}
