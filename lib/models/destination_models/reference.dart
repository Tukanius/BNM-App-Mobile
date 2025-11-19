part '../../parts/destination_models/reference.dart';

class Reference {
  String? id;
  String? name;

  Reference({this.name, this.id});
  static $fromJson(Map<String, dynamic> json) => _$ReferenceFromJson(json);

  factory Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$ReferenceToJson(this);
}
