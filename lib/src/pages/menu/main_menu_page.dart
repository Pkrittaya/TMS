import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/src/pages/menu/bottom_menu_provider.dart';
import 'package:tms/src/pages/menu/widgets/bottom_menu_bar.dart';
import 'package:tms/src/pages/home/home_page.dart';
import 'package:tms/src/pages/settings/settings_page.dart';
import 'package:tms/src/pages/transport/transport_page.dart';

class MainMenuPage extends ConsumerWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomMeneProvider);

    final List<Widget> pages = [
      HomePage(),
      TransportPage(),
      SettingsPage(),
    ];

    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomMenuBar(),
    );
  }
}
