import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tms/src/apptheme.dart';
import 'package:tms/src/pages/menu/bottom_menu_provider.dart';
import 'package:tms/src/pages/settings/widgets/more_item_setting.dart';
import 'package:tms/src/prefs_and_app_data.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  PrefsAndAppData prefs = PrefsAndAppData();

  Future<void> onpressLogout() async {
    final accessToken = await prefs.getAccessToken();
    debugPrint(accessToken);
    await prefs.deleteAccessToken();
    context.go('/');
    ref.read(bottomMenuProvider.notifier).state = 0;
  }

  @override
  void initState() {
    debugPrint('test setting');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: AppTheme.sppBlue,
                ),
              ),
              Positioned(
                top: 70,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1DJ07G3NozsXrAMSaNo4PfOanC3fylWdbRg&s',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'นายทดสอบ ทดสอบ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          moreItemSetting(
            title: 'แก้ไขการเข้าถึงกล้อง',
          ),
          moreItemSetting(
            title: 'แก้ไขการเข้าถึงตำแหน่ง',
          ),
          const SizedBox(height: 180),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.sppBlue,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () async {
              onpressLogout();
            },
            child: Text(
              "logout",
              style: TextStyle(fontSize: 16, color: AppTheme.white),
            ),
          ),
        ],
      ),
    );
  }
}
