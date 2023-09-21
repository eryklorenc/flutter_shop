// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsModel _$$_SettingsModelFromJson(Map<String, dynamic> json) =>
    _$_SettingsModel(
      postId: json['postId'] as int,
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_SettingsModelToJson(_$_SettingsModel instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'body': instance.body,
    };
