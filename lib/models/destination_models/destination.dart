import 'package:bnm_flutter/models/destination_models/beautiful_place.dart';

part '../../parts/destination_models/destination.dart';

class Destination {
  String? id;
  String? name;
  String? description;
  List<BeautifulPlace>? beautifulPlaces;

  Destination({this.id, this.name, this.description, this.beautifulPlaces});

  static $fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);
  Map<String, dynamic> toJson() => _$DestinationToJson(this);
}
