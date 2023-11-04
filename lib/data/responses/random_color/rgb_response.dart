import 'package:json_annotation/json_annotation.dart';

part 'rgb_response.g.dart';

@JsonSerializable()
class RgbResponse {
  final int r;
  final int g;
  final int b;

  RgbResponse(this.r, this.g, this.b);

  factory RgbResponse.fromJson(Map<String, dynamic> json) =>
      _$RgbResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RgbResponseToJson(this);
}
