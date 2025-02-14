import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tms/api/models/response/myjob_model.dart';
import 'package:tms/api/providers/data_provider.dart';
import 'package:tms/src/apptheme.dart';

class MyjobPage extends ConsumerStatefulWidget {
  const MyjobPage({super.key});

  @override
  ConsumerState<MyjobPage> createState() => _MyjobPageState();
}

class _MyjobPageState extends ConsumerState<MyjobPage> {
  TextEditingController searchController = TextEditingController();
  List<MyjobModel> postsAsync = List.empty();

  @override
  void initState() {
    debugPrint("my job page");
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
                  child: Column(
                    children: [
                      Text(
                        'งานของฉัน',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.search),
                          hintText: "เลขที่ใบปิดบรรทุก",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.of(context).size.height * 0.65,
            child: ref.watch(fetchAssetProvider).when(
                  data: (jobList) {
                    return ListView.builder(
                      itemCount: jobList.data?.length,
                      itemBuilder: (context, index) {
                        final job = jobList.data?[index];
                        return InkWell(
                          onTap: () {
                            context.go('/myjobDrop');
                            // ref.read(createMyjobProvider({
                            //   "title": "New Post",
                            //   "body": "This is a new post"
                            // }));
                            // ref.read(assetFilterProvider.notifier).state =
                            //     AssetReq(
                            //   page: 1,
                            //   perPage: 10,
                            //   statusCode: 2,
                            //   assetTypeCode: 1,
                            //   assetCategoryCode: 3,
                            // );

                            // ref.read(updateMyjobProvider({
                            //   "id": 'dddd',
                            //   "title": "Updated Title",
                            //   "body": "Updated content"
                            // }));
                          },
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
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Icon(Icons.airline_seat_flat)),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'S-VSM-20250201-002${job?.assetId ?? ""}',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: AppTheme.black,
                                            ),
                                          ),
                                          Text(
                                            'ส่งให้ลูกค้า : 107 ชิ้น',
                                            style: TextStyle(
                                              color: AppTheme.black60,
                                            ),
                                          ),
                                          Text(
                                            'รถขนส่ง : 6ขร6309',
                                            style: TextStyle(
                                              color: AppTheme.black60,
                                            ),
                                          ),
                                          Text(
                                            'วันที่เข้าไปรับสินค้า : 17/01/2025 07:00',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      renderDistance(
                                          icon: Icons.add_a_photo_rounded,
                                          text: "โครงการจัดส่ง",
                                          value: "โครงการจัดส่ง VSM"),
                                      renderDistance(
                                          icon: Icons.add_a_photo_rounded,
                                          text: "ต้นทาง",
                                          value: "VSM"),
                                      renderDistance(
                                          icon: Icons.add_a_photo_rounded,
                                          text: "ปลายทาง",
                                          value: "Customer"),
                                      Divider(
                                        color: AppTheme.black20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          renderItemData(
                                              count: "2", text: "Drop"),
                                          renderItemData(
                                              count: "1", text: "ใบนำส่ง"),
                                          renderItemData(
                                              count: "11",
                                              text: "น้ำหนักรวม (kg.)"),
                                          renderItemData(
                                              count: "11",
                                              text: "COD (บาท)",
                                              color: AppTheme.orange),
                                        ],
                                      ),
                                      Divider(
                                        color: AppTheme.black20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          renderDetailCar(
                                              text: "ระยะทาง (km)",
                                              count: "100"),
                                          renderDetailCar(
                                              text: "น้ำมัน (ลิตร)",
                                              count: "0.22"),
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
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => Center(child: Text('Error: $err')),
                ),
          ),
        ],
      ),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(color: AppTheme.black60),
            ),
            Text(
              value,
            ),
          ],
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
