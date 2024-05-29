import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class MemberResume {
  @JsonKey(name: "exercises")
  int exercises;
  @JsonKey(name: "body_parts")
  int bodyParts;

  MemberResume({
    required this.exercises,
    required this.bodyParts,
  });

  MemberResume.empty()
      : exercises = 0,
        bodyParts = 0;

  bool isEmpty() {
    if (bodyParts == 0 && exercises == 0) {
      return true;
    } else {
      return false;
    }
  }

  factory MemberResume.fromJson(Map<String, dynamic> json) => MemberResume(
        exercises: json["exercises"],
        bodyParts: json["body_parts"],
      );

  Map<String, dynamic> toJson() => {
        "exercises": exercises,
        "body_parts": bodyParts,
      };
}
