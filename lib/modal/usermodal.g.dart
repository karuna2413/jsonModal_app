// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

addres _$addresFromJson(Map<String, dynamic> json) => addres(
      city: json['city'] as String?,
      street: json['street'] as String?,
    );

Map<String, dynamic> _$addresToJson(addres instance) => <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
    };

userModal _$userModalFromJson(Map<String, dynamic> json) => userModal(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      address: addres.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$userModalToJson(userModal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
    };
