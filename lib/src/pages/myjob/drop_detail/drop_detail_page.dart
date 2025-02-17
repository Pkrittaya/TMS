import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:tms/src/apptheme.dart';
import 'package:tms/src/pages/myjob/widgets/card_detail.dart';
import 'package:tms/src/pages/myjob/widgets/card_job_header.dart';

class DropDetailPage extends ConsumerStatefulWidget {
  const DropDetailPage({super.key, required this.drop});
  final String drop;

  @override
  ConsumerState<DropDetailPage> createState() => _DropDetailPageState();
}

class _DropDetailPageState extends ConsumerState<DropDetailPage> {
  TextEditingController searchController = TextEditingController();
  List<bool> visibleDetails = List.generate(0, (index) => false);
  List<bool> isChecked = List.generate(0, (index) => false);

  void onHideShowDetailCart(int index) {
    setState(() {
      visibleDetails[index] = !visibleDetails[index];
    });
  }

  void onCheckBoxCard(int index, bool value) {
    setState(() {
      isChecked[index] = value;
    });
  }

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
              context.go('/myjobDrop');
            }),
        centerTitle: true,
        title: Text(
          "รายละเอียด Drop ${widget.drop}",
          style: TextStyle(color: AppTheme.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppTheme.sppBlue,
            ),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Icon(Icons.search),
                hintText: "รหัสใบนำส่ง",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Container(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: MediaQuery.of(context).size.height * 0.65,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  visibleDetails.add(false);
                  isChecked.add(false);
                  return Slidable(
                    key: ValueKey(index), // ใช้ Key เพื่อระบุแต่ละรายการ
                    endActionPane: ActionPane(
                      motion: ScrollMotion(), // หรือใช้ `DrawerMotion()`
                      children: [
                        Container(
                          child: SlidableAction(
                            onPressed: (context) {
                              // กด Edit
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Editing ${index}')),
                              );
                            },
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            icon: Icons.edit,
                            label: 'Edit',
                          ),
                        ),
                      ],
                    ),
                    child: CardDetail(
                      child: Column(
                        children: [
                          CardJobHeader(
                            index: index + 1,
                            toggle: visibleDetails[index],
                            onTap: () {
                              onHideShowDetailCart(index);
                            },
                            checkbox: (widget.drop == "0")
                                ? Checkbox(
                                    checkColor: AppTheme.white,
                                    value: isChecked[index],
                                    onChanged: (bool? value) {
                                      onCheckBoxCard(index, value!);
                                    },
                                  )
                                : null,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DBR680100040${index}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppTheme.black,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'โครงการจัดส่ง : โครงการจัดส่ง VSM',
                                    style: TextStyle(
                                      color: AppTheme.black60,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: visibleDetails[index],
                            child: Divider(
                              color: AppTheme.black20,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ),
                          Visibility(
                            visible: visibleDetails[index],
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  renderDistance(
                                      icon: Icons.add_a_photo_rounded,
                                      text: "ผู้ว่าจ้าง",
                                      value: "ผู้ประกอบการ VSM"),
                                  renderDistance(
                                      icon: Icons.add_a_photo_rounded,
                                      text: "วันที่จัดส่ง",
                                      value:
                                          "24/11/2024 13:20 - 24/11/2024 21:20"),
                                  renderDistance(
                                      icon: Icons.add_a_photo_rounded,
                                      text: "ที่อยู่ผู้รับ",
                                      value:
                                          "หมู่บ้าน เอกกวินทาวน์โฮม 26/9 ถนน เลียบคลองสอง แขวงบางชัน เขตคลองสามวา กุงเทพมหานคร 10510 // แขวงมีนบุรี เขตมีนบุรี กรุงเทพมหานคร 10510"),
                                  Divider(
                                    color: AppTheme.black20,
                                  ),
                                  Wrap(
                                    spacing: 16, // ระยะห่างระหว่าง Item
                                    runSpacing: 16, // ระยะห่างระหว่างบรรทัด
                                    alignment: WrapAlignment.spaceBetween,
                                    children: [
                                      renderItemData(
                                          count: "2", text: "รายการสินค้า"),
                                      renderItemData(
                                          count: "1", text: "จำนวนสินค้า"),
                                      renderItemData(
                                          count: "11",
                                          text: "COD (บาท)",
                                          color: AppTheme.orange),
                                      renderItemData(
                                          count: "11",
                                          text: "น้ำหนักรวม (kg.)"),
                                      renderItemData(
                                          count: "11", text: "ปริมาตร"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
          color: AppTheme.white,
          padding: EdgeInsets.all(16),
          child: ElevatedButton(
              onPressed: () {
                if (widget.drop == "0") {
                  context.go('/pickup?drop=${widget.drop}');
                } else {
                  context.go('/sendCustomer?drop=${widget.drop}');
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: (isChecked.length > 0)
                    ? AppTheme.sppBlue
                    : AppTheme.sppBlue40,
              ),
              child: Text(
                'ยืนยันการส่งสินค้า',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.white,
                ),
              ))),
    );
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
                style: TextStyle(color: AppTheme.black60),
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
}
