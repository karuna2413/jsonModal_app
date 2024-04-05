import 'package:json_annotation/json_annotation.dart';
part 'usermodal.g.dart';

@JsonSerializable()
//we create address class because json response is nested
class addres {
  String? street;
  String? city;
  addres({required this.city, required this.street});
  factory addres.fromJson(Map<String, dynamic> json) => _$addresFromJson(json);
  //convert json to dart
  Map<String, dynamic> toJson() => _$addresToJson(this);
//convert dart to json
}

@JsonSerializable()
class userModal {
  int? id;
  String? name;
  String? username;
  String? email;
  final addres address;
  userModal(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address});
  factory userModal.fromJson(Map<String, dynamic> json) {
    print('json$json');
    return _$userModalFromJson(json);
  }
  Map<String, dynamic> toJson() => _$userModalToJson(this);
}
