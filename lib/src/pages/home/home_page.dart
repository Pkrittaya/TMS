import 'package:flutter/material.dart';
import 'package:tms/src/apptheme.dart';
import 'package:tms/src/pages/home/widgets/appbar_home.dart';
import 'package:tms/src/pages/home/widgets/summary_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    debugPrint('test home');
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
                height: 240,
                decoration: BoxDecoration(
                  color: AppTheme.sppBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1DJ07G3NozsXrAMSaNo4PfOanC3fylWdbRg&s',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'DRIVER',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -140,
                left: MediaQuery.of(context).size.width * 0.05,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SummaryHome(
                          text: "ค้างรับสินค้า",
                          count: '3',
                          iconData: Icons.check_circle_outline,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SummaryHome(
                          text: "ค้างส่งสินค้า",
                          count: '5',
                          iconData: Icons.check_circle_outline,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SummaryHome(
                          text: "COD ค้างโอน",
                          count: '4',
                          iconData: Icons.check_circle_outline,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SummaryHome(
                          text: "ค้างส่งคืนสินค้า",
                          count: '0',
                          iconData: Icons.check_circle_outline,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 180),
          AppbarHome(),
        ],
      ),
    );
  }
}
