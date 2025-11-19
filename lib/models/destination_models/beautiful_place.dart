import 'package:bnm_flutter/models/destination_models/features.dart';
import 'package:bnm_flutter/models/destination_models/main_image.dart';
import 'package:bnm_flutter/models/destination_models/reference.dart';
part '../../parts/destination_models/beautiful_place.dart';

class BeautifulPlace {
  String? id;
  String? name;
  String? description;
  MainImage? mainImage;
  String? imagePosition;
  String? type;
  Reference? reference;
  bool? isHomeScreen;
  bool? isAppScreen;
  String? createdAt;
  String? updatedAt;
  List<Features>? features;

  BeautifulPlace({
    this.id,
    this.name,
    this.description,
    this.mainImage,
    this.imagePosition,
    this.type,
    this.reference,
    this.isHomeScreen,
    this.isAppScreen,
    this.createdAt,
    this.updatedAt,
    this.features,
  });

  static $fromJson(Map<String, dynamic> json) => _$BeautifulPlaceFromJson(json);

  factory BeautifulPlace.fromJson(Map<String, dynamic> json) =>
      _$BeautifulPlaceFromJson(json);
  Map<String, dynamic> toJson() => _$BeautifulPlaceToJson(this);
}
