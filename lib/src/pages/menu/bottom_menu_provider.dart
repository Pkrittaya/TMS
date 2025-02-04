import 'package:flutter_riverpod/flutter_riverpod.dart';

// 🔹 StateProvider สำหรับเก็บ index ของ BottomNavigationBar
final bottomMenuProvider = StateProvider<int>((ref) => 0);
