class Provience {
  final int code;
  final String nepaliName;
  final String englishName;
  late List<String> districts;

  Provience({
    required this.code,
    required this.nepaliName,
    required this.englishName,
    required this.districts,
  });

  factory Provience.fromJson(Map<String, dynamic> json) {
    return Provience(
      code: json["code"],
      nepaliName: json["nepali_name"],
      englishName: json["english_name"],
      districts: (json['districts'] as List).map((e) => (e as String)).toList(),
    );
  }

//  factory Provience.toJson(Map<String,dynamic>json) {
//   return Provience(
//  code: json['code'] ,
//  nepaliName:json[' nepaliName'] ,
//  englishName: json['englishName'] );
//  }
}
