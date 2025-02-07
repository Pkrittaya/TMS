import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tms/src/apptheme.dart';

class DeliveryNotePage extends StatefulWidget {
  const DeliveryNotePage({super.key});

  @override
  State<DeliveryNotePage> createState() => _DeliveryNotePageState();
}

class _DeliveryNotePageState extends State<DeliveryNotePage> {
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
                context.go('/myjobDropDetail');
              }),
          centerTitle: true,
          title: Text(
            "รายละเอียดใบนำส่ง",
            style: TextStyle(color: AppTheme.white),
          ),
        ),
        body: Container());
  }
}
