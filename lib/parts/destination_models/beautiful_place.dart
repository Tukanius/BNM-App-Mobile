part of '../../models/destination_models/beautiful_place.dart';

BeautifulPlace _$BeautifulPlaceFromJson(Map<String, dynamic> json) {
  return BeautifulPlace(
    id: json['_id'] != null ? json['_id'] as String : null,
    name: json['name'] != null ? json['name'] as String : null,
    description: json['description'] != null
        ? json['description'] as String
        : null,
    mainImage: json['mainImage'] != null
        ? MainImage.fromJson(json['mainImage'])
        : null,
    imagePosition: json['imagePosition'] != null
        ? json['imagePosition'] as String
        : null,
    type: json['type'] != null ? json['type'] as String : null,
    reference: json['reference'] != null
        ? Reference.fromJson(json['reference'])
        : null,
    isHomeScreen: json['isHomeScreen'] != null
        ? json['isHomeScreen'] as bool
        : null,
    isAppScreen: json['isAppScreen'] != null
        ? json['isAppScreen'] as bool
        : null,
    features: json['features'] != null
        ? (json['features'] as List).map((e) => Features.fromJson(e)).toList()
        : null,
    createdAt: json['createdAt'] != null ? json['createdAt'] as String : null,
    updatedAt: json['updatedAt'] != null ? json['updatedAt'] as String : null,
  );
}

Map<String, dynamic> _$BeautifulPlaceToJson(BeautifulPlace instance) {
  Map<String, dynamic> json = {};
  if (instance.id != null) json['_id'] = instance.id;
  if (instance.name != null) json['name'] = instance.name;
  if (instance.description != null) json['description'] = instance.description;
  if (instance.mainImage != null) json['mainImage'] = instance.mainImage;
  if (instance.imagePosition != null)
    json['imagePosition'] = instance.imagePosition;
  if (instance.type != null) json['type'] = instance.type;
  if (instance.reference != null) json['reference'] = instance.reference;
  if (instance.isHomeScreen != null)
    json['isHomeScreen'] = instance.isHomeScreen;
  if (instance.isAppScreen != null) json['isAppScreen'] = instance.isAppScreen;
  if (instance.createdAt != null) json['createdAt'] = instance.createdAt;
  if (instance.updatedAt != null) json['updatedAt'] = instance.updatedAt;
  if (instance.features != null) json['features'] = instance.features;

  return json;
}
