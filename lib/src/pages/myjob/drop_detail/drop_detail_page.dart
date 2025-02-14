import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tms/src/apptheme.dart';

class DropDetailPage extends ConsumerStatefulWidget {
  const DropDetailPage({super.key, required this.drop});
  final String drop;

  @override
  ConsumerState<DropDetailPage> createState() => _DropDetailPageState();
}

class _DropDetailPageState extends ConsumerState<DropDetailPage> {
  TextEditingController searchController = TextEditingController();

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
            child: InkWell(
              onTap: () {
                context.go('/myjobDeliveryNote');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: MediaQuery.of(context).size.height * 0.65,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.topLeft,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: AppTheme.sppBlue,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${index + 1}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Icon(Icons.airline_seat_flat)),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'S-VSM-20250201-002${index}',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: AppTheme.black,
                                        ),
                                      ),
                                      Text(
                                        'โครงการจัดส่ง : 107 ชิ้น',
                                        style: TextStyle(
                                          color: AppTheme.black60,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: AppTheme.black20,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Padding(
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
                          ],
                        ),
                      ),
                    );
                  },
                ),
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
                backgroundColor: AppTheme.sppBlue,
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

  Widget renderDetailCar(
      {String text = "",
      String count = "",
      IconData icon = Icons.access_time_sharp}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.grayD4A50,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppTheme.grayD4A50),
        boxShadow: [
          BoxShadow(
            color: AppTheme.grayD4A50,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(text),
              Text(
                count,
                style: TextStyle(color: AppTheme.green),
                softWrap: true,
                overflow: TextOverflow.visible,
              )
            ],
          ),
        ],
      ),
    );
  }
}
