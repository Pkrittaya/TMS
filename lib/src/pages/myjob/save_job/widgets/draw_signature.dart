import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:tms/src/apptheme.dart';

class DrawSignature extends StatefulWidget {
  const DrawSignature({
    super.key,
    required this.onSaveSignature,
  });

  final Function(Uint8List? image) onSaveSignature;

  @override
  State<DrawSignature> createState() => _DrawSignatureState();
}

class _DrawSignatureState extends State<DrawSignature> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 3, // ความหนาของเส้น
    penColor: AppTheme.black, // สีของเส้น
    exportBackgroundColor: AppTheme.white, // พื้นหลังเมื่อต้องการบันทึกรูป
  );

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
              Navigator.pop(context);
            }),
        centerTitle: true,
        title: Text(
          "ลายเซ็น",
          style: TextStyle(color: AppTheme.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Signature(
                controller: _controller,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => _controller.clear(), // ล้างลายเซ็น
                child: Text("Clear"),
              ),
              ElevatedButton(
                onPressed: () async {
                  final image = await _controller.toPngBytes(); // แปลงเป็นรูป
                  if (image != null) {
                    debugPrint("Signature saved!");
                    widget.onSaveSignature(image);
                    Navigator.pop(context);
                  }
                },
                child: Text("Save"),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
