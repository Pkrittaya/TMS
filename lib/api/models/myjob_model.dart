import 'dart:convert';

// Model สำหรับเก็บข้อมูลโพสต์
class MyjobModel {
  final int id;
  final int userId;
  final String title;
  final String body;

  MyjobModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  // แปลง JSON เป็น Object
  factory MyjobModel.fromJson(Map<String, dynamic> json) {
    return MyjobModel(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }

  // แปลง Object เป็น JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'body': body,
    };
  }

  // ฟังก์ชันสำหรับแปลง JSON List เป็น List<Post>
  static List<MyjobModel> fromJsonList(String jsonString) {
    final List<dynamic> jsonData = json.decode(jsonString);
    return jsonData.map((item) => MyjobModel.fromJson(item)).toList();
  }
}
