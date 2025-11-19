part of '../../models/destination_models/features.dart';

Features _$FeaturesFromJson(Map<String, dynamic> json) {
  return Features(
    id: json['_id'] != null ? json['_id'] as String : null,
    beautifulPlace: json['beautifulPlace'] != null
        ? json['beautifulPlace'] as String
        : null,
    title: json['title'] != null ? json['title'] as String : null,
    description: json['description'] != null
        ? json['description'] as String
        : null,
    sort: json['sort'] != null ? json['sort'] as int : null,
    mainImage: json['mainImage'] != null
        ? MainImage.fromJson(json['mainImage'])
        : null,
    images: json['images'] != null
        ? (json['images'] as List).map((e) => MainImage.fromJson(e)).toList()
        : null,
    deletedAt: json['deletedAt'] != null ? json['deletedAt'] as String : null,
    createdAt: json['createdAt'] != null ? json['createdAt'] as String : null,
    updatedAt: json['updatedAt'] != null ? json['updatedAt'] as String : null,
    url: json['url'] != null ? json['url'] as String : null,
  );
}

Map<String, dynamic> _$FeaturesToJson(Features instance) {
  Map<String, dynamic> json = {};

  if (instance.id != null) json['_id'] = instance.id;
  if (instance.beautifulPlace != null)
    json['beautifulPlace'] = instance.beautifulPlace;
  if (instance.title != null) json['title'] = instance.title;
  if (instance.description != null) json['description'] = instance.description;
  if (instance.sort != null) json['sort'] = instance.sort;
  if (instance.images != null) json['images'] = instance.images;
  if (instance.mainImage != null) json['mainImage'] = instance.mainImage;
  if (instance.deletedAt != null) json['deletedAt'] = instance.deletedAt;
  if (instance.createdAt != null) json['createdAt'] = instance.createdAt;
  if (instance.updatedAt != null) json['updatedAt'] = instance.updatedAt;
  if (instance.url != null) json['url'] = instance.url;
  return json;
}
