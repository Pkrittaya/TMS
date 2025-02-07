import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tms/src/apptheme.dart';

class DropDetailPage extends StatefulWidget {
  const DropDetailPage({super.key});

  @override
  State<DropDetailPage> createState() => _DropDetailPageState();
}

class _DropDetailPageState extends State<DropDetailPage> {
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
            "รายละเอียด Drop",
            style: TextStyle(color: AppTheme.white),
          ),
        ),
        body: Container(
          child: InkWell(
            onTap: () {
              context.go('/myjobDeliveryNote');
            },
            child: Container(
              alignment: Alignment.topLeft,
              height: 100,
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
              child: Text("ไปหน้ารายละเอียดใบนำส่ง"),
            ),
          ),
        ));
  }
}
