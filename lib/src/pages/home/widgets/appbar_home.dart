import 'package:flutter/material.dart';
import 'package:tms/src/apptheme.dart';

class AppbarHome extends StatefulWidget {
  const AppbarHome({super.key});

  @override
  State<AppbarHome> createState() => _AppbarHomeState();
}

class _AppbarHomeState extends State<AppbarHome> {
  List<Map<String, dynamic>> iconData = [
    {'icon': Icons.emoji_transportation, 'text': 'บันทึกระยะทาง'},
    {'icon': Icons.edit_document, 'text': 'COD'},
    {'icon': Icons.supervised_user_circle_outlined, 'text': 'ประวัติการจัดส่ง'},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        3,
        (index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.sppBlue,
                  borderRadius: BorderRadius.circular(15), // มุมมน
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.black20,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {
                    debugPrint('Clicked on ${iconData[index]['text']}!');
                  },
                  icon: Icon(
                    iconData[index]['icon'],
                    color: AppTheme.white,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(height: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
              Text(
                iconData[index]['text'], // ข้อความด้านล่าง
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.black,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
