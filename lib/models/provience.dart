class Provience {
 late  int code;
late   String nepaliName;
 late  String englishName;

  Provience({required this.code,
  required  this.nepaliName,
  required  this.englishName});


 Provience.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    nepaliName = json['nepali_name'];
    englishName = json['english_name'];
  }


 factory Provience.toJson(Map<String,dynamic>json) {
  return Provience(
 code: json['code'] ,
 nepaliName:json[' nepaliName'] ,
 englishName: json['englishName'] );
 }
}