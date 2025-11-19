part '../parts/general_init.dart';

class GeneralInit {
  String? id;

  GeneralInit({this.id});
  static $fromJson(Map<String, dynamic> json) => _$GeneralInitFromJson(json);

  factory GeneralInit.fromJson(Map<String, dynamic> json) =>
      _$GeneralInitFromJson(json);
  Map<String, dynamic> toJson() => _$GeneralInitToJson(this);
}
