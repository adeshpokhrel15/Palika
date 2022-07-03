// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:hive/hive.dart';

part 'personalhive.g.dart';

@HiveType(typeId: 14)
class PersonalHiveModel extends HiveObject {
  @HiveField(0)
  String? firstNamepersonal;

  @HiveField(1)
  String? middleNamepersonal;

  @HiveField(2)
  String? lastNamepersonal;

  @HiveField(3)
  int? agepersonal;

  @HiveField(4)
  String? genderpersonal;

  @HiveField(5)
  String? dateofbirthpersonal;

  @HiveField(6)
  String? handicappedIDPersonal;

  @HiveField(7)
  int? mobilenumberpersonal;

  @HiveField(8)
  String? emailpersonal;

  @HiveField(9)
  String? pannumberpersonal;

  @HiveField(10)
  String? bloodgroupPersonal;
  PersonalHiveModel({
    this.firstNamepersonal,
    this.middleNamepersonal,
    this.lastNamepersonal,
    this.agepersonal,
    this.genderpersonal,
    this.dateofbirthpersonal,
    this.handicappedIDPersonal,
    this.mobilenumberpersonal,
    this.emailpersonal,
    this.pannumberpersonal,
    this.bloodgroupPersonal,
  });
  Map<String, dynamic> toJson() => {
        "first_name": firstNamepersonal,
        "middle_name": middleNamepersonal,
        "last_name": lastNamepersonal,
        "dob": dateofbirthpersonal,
        "gender": genderpersonal,
        "mobile_number": mobilenumberpersonal,
        "email": emailpersonal,
        "pan_number": pannumberpersonal,
        "blood_group": bloodgroupPersonal,
      };

  PersonalHiveModel copyWith({
    String? firstNamepersonal,
    String? middleNamepersonal,
    String? lastNamepersonal,
    int? agepersonal,
    String? genderpersonal,
    String? dateofbirthpersonal,
    String? handicappedIDPersonal,
    int? mobilenumberpersonal,
    String? emailpersonal,
    String? pannumberpersonal,
    String? bloodgroupPersonal,
  }) {
    return PersonalHiveModel(
      firstNamepersonal: firstNamepersonal ?? this.firstNamepersonal,
      middleNamepersonal: middleNamepersonal ?? this.middleNamepersonal,
      lastNamepersonal: lastNamepersonal ?? this.lastNamepersonal,
      agepersonal: agepersonal ?? this.agepersonal,
      genderpersonal: genderpersonal ?? this.genderpersonal,
      dateofbirthpersonal: dateofbirthpersonal ?? this.dateofbirthpersonal,
      handicappedIDPersonal:
          handicappedIDPersonal ?? this.handicappedIDPersonal,
      mobilenumberpersonal: mobilenumberpersonal ?? this.mobilenumberpersonal,
      emailpersonal: emailpersonal ?? this.emailpersonal,
      pannumberpersonal: pannumberpersonal ?? this.pannumberpersonal,
      bloodgroupPersonal: bloodgroupPersonal ?? this.bloodgroupPersonal,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstNamepersonal': firstNamepersonal,
      'middleNamepersonal': middleNamepersonal,
      'lastNamepersonal': lastNamepersonal,
      'agepersonal': agepersonal,
      'genderpersonal': genderpersonal,
      'dateofbirthpersonal': dateofbirthpersonal,
      'handicappedIDPersonal': handicappedIDPersonal,
      'mobilenumberpersonal': mobilenumberpersonal,
      'emailpersonal': emailpersonal,
      'pannumberpersonal': pannumberpersonal,
      'bloodgroupPersonal': bloodgroupPersonal,
    };
  }

  factory PersonalHiveModel.fromMap(Map<String, dynamic> map) {
    return PersonalHiveModel(
      firstNamepersonal: map['firstNamepersonal'] != null
          ? map['firstNamepersonal'] as String
          : null,
      middleNamepersonal: map['middleNamepersonal'] != null
          ? map['middleNamepersonal'] as String
          : null,
      lastNamepersonal: map['lastNamepersonal'] != null
          ? map['lastNamepersonal'] as String
          : null,
      agepersonal:
          map['agepersonal'] != null ? map['agepersonal'] as int : null,
      genderpersonal: map['genderpersonal'] != null
          ? map['genderpersonal'] as String
          : null,
      dateofbirthpersonal: map['dateofbirthpersonal'] != null
          ? map['dateofbirthpersonal'] as String
          : null,
      handicappedIDPersonal: map['handicappedIDPersonal'] != null
          ? map['handicappedIDPersonal'] as String
          : null,
      mobilenumberpersonal: map['mobilenumberpersonal'] != null
          ? map['mobilenumberpersonal'] as int
          : null,
      emailpersonal:
          map['emailpersonal'] != null ? map['emailpersonal'] as String : null,
      pannumberpersonal: map['pannumberpersonal'] != null
          ? map['pannumberpersonal'] as String
          : null,
      bloodgroupPersonal: map['bloodgroupPersonal'] != null
          ? map['bloodgroupPersonal'] as String
          : null,
    );
  }

  factory PersonalHiveModel.fromJson(String source) =>
      PersonalHiveModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PersonalHiveModel(firstNamepersonal: $firstNamepersonal, middleNamepersonal: $middleNamepersonal, lastNamepersonal: $lastNamepersonal, agepersonal: $agepersonal, genderpersonal: $genderpersonal, dateofbirthpersonal: $dateofbirthpersonal, handicappedIDPersonal: $handicappedIDPersonal, mobilenumberpersonal: $mobilenumberpersonal, emailpersonal: $emailpersonal, pannumberpersonal: $pannumberpersonal, bloodgroupPersonal: $bloodgroupPersonal)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PersonalHiveModel &&
        other.firstNamepersonal == firstNamepersonal &&
        other.middleNamepersonal == middleNamepersonal &&
        other.lastNamepersonal == lastNamepersonal &&
        other.agepersonal == agepersonal &&
        other.genderpersonal == genderpersonal &&
        other.dateofbirthpersonal == dateofbirthpersonal &&
        other.handicappedIDPersonal == handicappedIDPersonal &&
        other.mobilenumberpersonal == mobilenumberpersonal &&
        other.emailpersonal == emailpersonal &&
        other.pannumberpersonal == pannumberpersonal &&
        other.bloodgroupPersonal == bloodgroupPersonal;
  }

  @override
  int get hashCode {
    return firstNamepersonal.hashCode ^
        middleNamepersonal.hashCode ^
        lastNamepersonal.hashCode ^
        agepersonal.hashCode ^
        genderpersonal.hashCode ^
        dateofbirthpersonal.hashCode ^
        handicappedIDPersonal.hashCode ^
        mobilenumberpersonal.hashCode ^
        emailpersonal.hashCode ^
        pannumberpersonal.hashCode ^
        bloodgroupPersonal.hashCode;
  }
}
