import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/api/models/request/logistic_transection_req.dart';

final logisticTransectionFilterProvider = StateProvider<LogisticTransectionReq>(
    (ref) => LogisticTransectionReq(page: 1, perPage: 10));
