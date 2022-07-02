class Provience {
  final int code;
  final String nepaliName;
  final String englishName;

  Provience({
    required this.code,
    required this.nepaliName,
    required this.englishName,
  });

  factory Provience.fromJson(Map<String, dynamic> json) {
    return Provience(
      code: json["code"],
      nepaliName: json["nepali_name"],
      englishName: json["english_name"],
    );
  }
}
