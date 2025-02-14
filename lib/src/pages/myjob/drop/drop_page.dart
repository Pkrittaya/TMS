import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tms/src/apptheme.dart';

class DropPage extends StatefulWidget {
  const DropPage({super.key});

  @override
  State<DropPage> createState() => _DropPageState();
}

class _DropPageState extends State<DropPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppTheme.sppBlue,
          iconTheme: const IconThemeData(
            color: AppTheme.lightBlue,
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: AppTheme.white),
              onPressed: () {
                context.go('/home');
              }),
          centerTitle: true,
          title: Text(
            "รายละเอียด Drop",
            style: TextStyle(color: AppTheme.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.of(context).size.height * 0.85,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    context.go('/myjobDropDetail?drop=${index}');
                  },
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.grayD4A50,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'จุด Drop ${index + 1}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppTheme.black,
                              ),
                            ),
                            Icon(Icons.gps_fixed),
                          ],
                        ),
                        Divider(
                          color: AppTheme.black20,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            renderDistance(
                                icon: Icons.add_a_photo_rounded,
                                text: "ผู้ติดต่อ",
                                value: "VSK"),
                            renderDistance(
                                icon: Icons.add_a_photo_rounded,
                                text: "ที่อยู่",
                                value:
                                    "87/18-21 หมู่ 13 ถนนสุวิทวงศ์ แขวงมีนบุรีเขตมีนบุรี กรุงเทพมหานคร 10510"),
                            Divider(
                              color: AppTheme.black20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                renderDetailAction(text: [
                                  {"รับทั้งหมด": "1"},
                                  {"รอรับ": "1"},
                                  {"รับแล้ว": "0"},
                                ], color: AppTheme.green),
                                renderDetailAction(text: [
                                  {"ส่งทั้งหมด": "0"},
                                  {"รอส่ง": "0"},
                                  {"ส่งแล้ว": "0"},
                                ], color: AppTheme.lightBlue60),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }

  Widget renderDistance(
      {required IconData icon, required String text, String value = ""}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: AppTheme.black60,
                ),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              Text(
                value,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget renderItemData(
      {String count = "", required String text, Color color = AppTheme.green}) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(color: color),
        ),
        Text(
          text,
          style: TextStyle(color: AppTheme.black60),
        )
      ],
    );
  }

  Widget renderDetailAction(
      {required List<Map<String, String>> text,
      Color color = AppTheme.grayD4A50}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color),
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: text.map((item) {
            String key = item.keys.first;
            String value = item[key] ?? "";

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Text(
                    key,
                    style: TextStyle(
                        color: AppTheme.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    value,
                    style: TextStyle(color: AppTheme.white),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}
