import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/api/models/myjob_model.dart';
import '../services/api_service.dart';

//  GET Provider - ดึงโพสต์ทั้งหมด
final fetchMyjobProvider = FutureProvider<List<MyjobModel>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.fetchPosts();
});

//  POST Provider - สร้างโพสต์ใหม่
final createMyjobProvider =
    FutureProvider.family<MyjobModel, Map<String, String>>((ref, data) async {
  return ref.read(apiServiceProvider).postMyJob(data["title"]!, data["body"]!);
});

//  PUT Provider - อัปเดตโพสต์
final updateMyjobProvider =
    FutureProvider.family<MyjobModel, Map<String, dynamic>>((ref, data) async {
  return ref
      .read(apiServiceProvider)
      .pushMyJob(data["id"], data["title"], data["body"]);
});
