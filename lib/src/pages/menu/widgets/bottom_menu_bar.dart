import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../bottom_menu_provider.dart';

class BottomMenuBar extends ConsumerWidget {
  const BottomMenuBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomMeneProvider);

    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) => ref.read(bottomMeneProvider.notifier).state = index,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_motorsports), label: "Transport"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }
}
