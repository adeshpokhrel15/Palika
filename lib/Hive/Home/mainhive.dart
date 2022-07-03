// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:hive/hive.dart';

part 'mainhive.g.dart';

@HiveType(typeId: 19)
class HomeHiveModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final DateTime createdDate;

  @HiveField(3)
  final String address;

  HomeHiveModel({
    required this.id,
    required this.name,
    required this.createdDate,
    required this.address,
  });

  HomeHiveModel copyWith({
    String? id,
    String? name,
    DateTime? createdDate,
    String? address,
  }) {
    return HomeHiveModel(
      id: id ?? this.id,
      name: name ?? this.name,
      createdDate: createdDate ?? this.createdDate,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'createdDate': createdDate.millisecondsSinceEpoch,
      'address': address,
    };
  }

  factory HomeHiveModel.fromMap(Map<String, dynamic> map) {
    return HomeHiveModel(
      id: map['id'] as String,
      name: map['name'] as String,
      createdDate:
          DateTime.fromMillisecondsSinceEpoch(map['createdDate'] as int),
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeHiveModel.fromJson(String source) =>
      HomeHiveModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HomeHiveModel(id: $id, name: $name, createdDate: $createdDate, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomeHiveModel &&
        other.id == id &&
        other.name == name &&
        other.createdDate == createdDate &&
        other.address == address;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        createdDate.hashCode ^
        address.hashCode;
  }
}
