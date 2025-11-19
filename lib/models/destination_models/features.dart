import 'package:bnm_flutter/models/destination_models/main_image.dart';

part '../../parts/destination_models/features.dart';

class Features {
  String? id;
  String? beautifulPlace;
  // Null? property;
  String? title;
  String? description;
  int? sort;
  List<MainImage>? images;
  MainImage? mainImage;
  // Null? mainVideo;
  // List<Null>? videos;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? url;

  Features({
    this.id,
    this.beautifulPlace,
    // this.property,
    this.title,
    this.description,
    this.sort,
    this.images,
    this.mainImage,
    // this.mainVideo,
    // this.videos,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.url,
    // this.iV,
  });
  static $fromJson(Map<String, dynamic> json) => _$FeaturesFromJson(json);

  factory Features.fromJson(Map<String, dynamic> json) =>
      _$FeaturesFromJson(json);
  Map<String, dynamic> toJson() => _$FeaturesToJson(this);
}
