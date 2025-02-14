import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider สำหรับสร้าง Dio instance
final dioProvider = Provider<Dio>((ref) {
  // return Dio(
  //   BaseOptions(
  //     baseUrl: 'https://jsonplaceholder.typicode.com',
  //     connectTimeout: const Duration(seconds: 10),
  //     receiveTimeout: const Duration(seconds: 10),
  //   ),
  // );

  return Dio(
    BaseOptions(
      baseUrl: 'https://dev-api.superpart.co.th/api-spp/v1/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );
});
