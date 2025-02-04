import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../bottom_menu_provider.dart';

class BottomMenuBar extends ConsumerWidget {
  const BottomMenuBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomMenuProvider);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (index) => ref.read(bottomMenuProvider.notifier).state = index,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "หน้าหลัก"),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_motorsports), label: "งานใหม่"),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_motorsports), label: "งานของฉัน"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "ตั้งค่า"),
      ],
    );
  }
}
