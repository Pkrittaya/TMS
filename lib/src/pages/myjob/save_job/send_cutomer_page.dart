import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:tms/src/apptheme.dart';
import 'package:tms/src/pages/myjob/save_job/widgets/image_product.dart';
import 'package:tms/src/pages/myjob/save_job/widgets/map_location.dart';
import 'package:tms/src/pages/myjob/save_job/widgets/signature_user.dart';

class SendCutomerPage extends StatefulWidget {
  const SendCutomerPage({super.key, required this.drop});

  final String drop;

  @override
  State<SendCutomerPage> createState() => _SendCutomerPageState();
}

class _SendCutomerPageState extends State<SendCutomerPage> {
  File? image;
  Uint8List? signatureImage;
  TextEditingController mileageController = TextEditingController(text: "");
  Position? currentPosition;

  void onSaveImage(File? img) async {
    if (img != null) {
      setState(() {
        image = img;
      });
    }
  }

  void onChangeSignature(Uint8List? image) async {
    if (image != null) {
      setState(() {
        signatureImage = image;
      });
    }
  }

  Future<void> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // ตรวจสอบว่า Location service เปิดอยู่หรือไม่
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // ถ้า Location service ปิดอยู่
      return Future.error('Location services are disabled.');
    }

    // ขออนุญาตเข้าถึงตำแหน่ง
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    // ดึงตำแหน่งปัจจุบัน
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      currentPosition = position;
    });
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
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
              context.go('/myjobDropDetail?drop=${widget.drop}');
            }),
        centerTitle: true,
        title: Text(
          "บันทึกการจัดส่ง",
          style: TextStyle(color: AppTheme.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(16),
            color: AppTheme.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageProduct(
                    title: "หลักฐานการจัดส่งสินค้า", onSaveImage: onSaveImage),
                const SizedBox(
                  height: 16,
                ),
                SignatureUser(
                    title: "ลูกค้า", onChangeSignature: onChangeSignature),
                const SizedBox(
                  height: 16,
                ),
                MapLocation(
                  currentPosition: currentPosition,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            )),
      ),
      bottomNavigationBar: Container(
          color: AppTheme.white,
          padding: EdgeInsets.all(16),
          child: ElevatedButton(
              onPressed: () {
                context.go('/myjobDropDetail?drop=${widget.drop}');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.sppBlue,
              ),
              child: Text(
                'บันทึก',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.white,
                ),
              ))),
    );
  }
}
