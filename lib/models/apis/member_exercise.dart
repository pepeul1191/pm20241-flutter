import 'dart:convert';

class MemberExercise {
  int id;
  String name;
  String imageUrl;
  String videoUrl;
  String description;
  int bodyPartId;
  int sets;
  int reps;

  MemberExercise({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.videoUrl,
    required this.description,
    required this.bodyPartId,
    required this.sets,
    required this.reps,
  });

  // Método fromJson
  factory MemberExercise.fromJson(Map<String, dynamic> json) {
    return MemberExercise(
      id: json['id'],
      name: json['name'],
      imageUrl: json['image_url'],
      videoUrl: json['video_url'],
      description: json['description'],
      bodyPartId: json['body_part_id'],
      sets: json['sets'],
      reps: json['reps'],
    );
  }

  // Método toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image_url': imageUrl,
      'video_url': videoUrl,
      'description': description,
      'body_part_id': bodyPartId,
      'sets': sets,
      'reps': reps,
    };
  }

  // Método toString
  @override
  String toString() {
    return 'MemberExercise{id: $id, name: $name, imageUrl: $imageUrl, videoUrl: $videoUrl, description: $description, bodyPartId: $bodyPartId, sets: $sets, reps: $reps}';
  }
}
