import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/api/models/request/logistic_transection_req.dart';
import 'package:tms/api/models/response/auth_login_model.dart';
import 'package:tms/api/models/response/logistic_transection_model.dart';
import 'package:tms/src/prefs_and_app_data.dart';
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

  PrefsAndAppData prefs = PrefsAndAppData();

  // Future<List<MyjobModel>> fetchMyjob() async {
  //   try {
  //     final response = await _dio.get('/posts');
  //     return (response.data as List)
  //         .map((post) => MyjobModel.fromJson(post))
  //         .toList();
  //   } catch (e) {
  //     throw Exception('Failed to fetch posts');
  //   }
  // }

  // Future<MyjobModel> postMyJob(String title, String body) async {
  //   try {
  //     final response = await _dio.post("/posts", data: {
  //       "title": title,
  //       "body": body,
  //       "userId": 1,
  //     });

  //     return MyjobModel.fromJson(response.data);
  //   } catch (e) {
  //     throw Exception("Failed to create post");
  //   }
  // }

  // Future<MyjobModel> pushMyJob(int id, String title, String body) async {
  //   try {
  //     final response = await _dio.put("/posts/$id", data: {
  //       "id": id,
  //       "title": title,
  //       "body": body,
  //       "userId": 1,
  //     });

  //     return MyjobModel.fromJson(response.data);
  //   } catch (e) {
  //     throw Exception("Failed to update post");
  //   }
  // }

  //*********** Login ***********//
  Future<AuthLoginModel> authLogin(String username, String password) async {
    try {
      final response = await _dio.post("auth/login", data: {
        "userName": username,
        "password": password,
      });

      if (response.statusCode == 200) {
        return AuthLoginModel.fromJson(response.data);
      } else {
        throw Exception("Invalid login response");
      }
    } catch (e) {
      throw Exception("Failed to create login");
    }
  }

  //*********** List logistic transection ***********//
  Future<LogisticTransectionModel> fetchLogisticTransection(
      {LogisticTransectionReq? data}) async {
    try {
      final accessToken = await prefs.getAccessToken();
      final response = await _dio.get(
        'logistic-transection',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${accessToken}',
          },
        ),
        queryParameters: data?.toMap(),
      );
      return LogisticTransectionModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch asset');
    }
  }
}
