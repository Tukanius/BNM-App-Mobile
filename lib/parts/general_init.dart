part of '../models/general_init.dart';

GeneralInit _$GeneralInitFromJson(Map<String, dynamic> json) {
  return GeneralInit(id: json['_id'] != null ? json['_id'] as String : null);
}

Map<String, dynamic> _$GeneralInitToJson(GeneralInit instance) {
  Map<String, dynamic> json = {};

  if (instance.id != null) json['_id'] = instance.id;

  return json;
}
