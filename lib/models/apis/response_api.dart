import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ResponseAPI {
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  dynamic data;

  ResponseAPI({
    required this.message,
    required this.data,
  });

  factory ResponseAPI.fromJson(Map<String, dynamic> json) => ResponseAPI(
        message: json["message"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data,
      };
}
