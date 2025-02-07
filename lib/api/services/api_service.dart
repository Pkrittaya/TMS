import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/api/models/myjob_model.dart';
import '../core/dio_provider.dart';

// Provider สำหรับ ApiService
final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = ref.watch(dioProvider);
  return ApiService(dio);
});

// คลาสสำหรับเรียก API
class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<List<MyjobModel>> fetchPosts() async {
    try {
      final response = await _dio.get('/posts');
      return (response.data as List)
          .map((post) => MyjobModel.fromJson(post))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch posts');
    }
  }

  Future<MyjobModel> postMyJob(String title, String body) async {
    try {
      final response = await _dio.post("/posts", data: {
        "title": title,
        "body": body,
        "userId": 1,
      });

      return MyjobModel.fromJson(response.data);
    } catch (e) {
      throw Exception("Failed to create post");
    }
  }

  Future<MyjobModel> pushMyJob(int id, String title, String body) async {
    try {
      final response = await _dio.put("/posts/$id", data: {
        "id": id,
        "title": title,
        "body": body,
        "userId": 1,
      });

      return MyjobModel.fromJson(response.data);
    } catch (e) {
      throw Exception("Failed to update post");
    }
  }
}
