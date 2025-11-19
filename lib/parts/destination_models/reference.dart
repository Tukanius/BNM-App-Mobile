part of '../../models/destination_models/reference.dart';

Reference _$ReferenceFromJson(Map<String, dynamic> json) {
  return Reference(
    id: json['_id'] != null ? json['_id'] as String : null,
    name: json['name'] != null ? json['name'] as String : null,
  );
}

Map<String, dynamic> _$ReferenceToJson(Reference instance) {
  Map<String, dynamic> json = {};
  if (instance.id != null) json['_id'] = instance.id;

  if (instance.name != null) json['name'] = instance.name;

  return json;
}
