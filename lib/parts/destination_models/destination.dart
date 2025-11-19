part of '../../models/destination_models/destination.dart';

Destination _$DestinationFromJson(Map<String, dynamic> json) {
  return Destination(
    id: json['_id'] != null ? json['_id'] as String : null,
    name: json['name'] != null ? json['name'] as String : null,
    description: json['description'] != null
        ? json['description'] as String
        : null,
    beautifulPlaces: json['beautifulPlaces'] != null
        ? (json['beautifulPlaces'] as List)
              .map((e) => BeautifulPlace.fromJson(e))
              .toList()
        : null,
  );
}

Map<String, dynamic> _$DestinationToJson(Destination instance) {
  Map<String, dynamic> json = {};
  if (instance.id != null) json['_id'] = instance.id;
  if (instance.name != null) json['name'] = instance.name;
  if (instance.description != null) json['description'] = instance.description;
  if (instance.beautifulPlaces != null)
    json['beautifulPlaces'] = instance.beautifulPlaces;

  return json;
}
