import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/api/models/response/auth_login_model.dart';
import 'package:tms/api/models/response/logistic_transection_model.dart';
import 'package:tms/api/providers/request_provider.dart';
import '../services/api_service.dart';

//  GET Provider - ดึงโพสต์ทั้งหมด
// final fetchMyjobProvider = FutureProvider<List<MyjobModel>>((ref) async {
//   final apiService = ref.watch(apiServiceProvider);
//   return apiService.fetchMyjob();
// });

// //  POST Provider - สร้างโพสต์ใหม่
// final createMyjobProvider =
//     FutureProvider.family<MyjobModel, Map<String, String>>((ref, data) async {
//   return ref.read(apiServiceProvider).postMyJob(data["title"]!, data["body"]!);
// });

// //  PUT Provider - อัปเดตโพสต์
// final updateMyjobProvider =
//     FutureProvider.family<MyjobModel, Map<String, dynamic>>((ref, data) async {
//   return ref
//       .read(apiServiceProvider)
//       .pushMyJob(data["id"], data["title"], data["body"]);
// });

//*********** Login ***********//
final authLogin = FutureProvider.family<AuthLoginModel, Map<String, String>>(
    (ref, data) async {
  return await ref
      .read(apiServiceProvider)
      .authLogin(data["userName"]!, data["password"]!);
});

//*********** List logistic transection ***********//
final fetchLogisticTransection =
    FutureProvider.autoDispose<LogisticTransectionModel>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  final request = ref.watch(logisticTransectionFilterProvider);

  return apiService.fetchLogisticTransection(data: request);
});
