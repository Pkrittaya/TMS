import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/api/models/response/asset_model.dart';
import 'package:tms/api/models/response/auth_login_model.dart';
import 'package:tms/api/models/response/myjob_model.dart';
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

//*********** Test Asset ***********//
final fetchAssetProvider = FutureProvider.autoDispose<AssetModel>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  final request = ref.watch(assetFilterProvider);

  return apiService.fetchAsset(data: request);
});
