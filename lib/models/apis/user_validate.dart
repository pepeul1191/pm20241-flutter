import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UserValidate {
  @JsonKey(name: "user_id")
  int userId;
  @JsonKey(name: "member_id")
  int memberId;

  UserValidate({
    required this.userId,
    required this.memberId,
  });

  UserValidate.empty()
      : userId = 0,
        memberId = 0;

  bool isEmpty() {
    if (memberId == 0 && userId == 0) {
      return true;
    } else {
      return false;
    }
  }

  factory UserValidate.fromJson(Map<String, dynamic> json) => UserValidate(
        userId: json["user_id"],
        memberId: json["member_id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "member_id": memberId,
      };
}
