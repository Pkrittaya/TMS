import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/api/models/request/asset_req.dart';

final assetFilterProvider =
    StateProvider<AssetReq>((ref) => AssetReq(page: 1, perPage: -1));
