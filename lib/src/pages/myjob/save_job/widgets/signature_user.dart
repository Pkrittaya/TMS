import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:tms/src/apptheme.dart';
import 'package:tms/src/pages/myjob/save_job/widgets/draw_signature.dart';

class SignatureUser extends StatefulWidget {
  const SignatureUser(
      {super.key, required this.onChangeSignature, required this.title});

  final Function(Uint8List? image) onChangeSignature;
  final String title;

  @override
  State<SignatureUser> createState() => _SignatureUserState();
}

class _SignatureUserState extends State<SignatureUser> {
  Uint8List? signatureImage;

  final SignatureController _controller = SignatureController(
    penStrokeWidth: 3, // ความหนาของเส้น
    penColor: AppTheme.black, // สีของเส้น
    exportBackgroundColor: AppTheme.white, // พื้นหลังเมื่อต้องการบันทึกรูป
  );

  void onSaveSignature(Uint8List? image) async {
    signatureImage = image;
    widget.onChangeSignature(image);
  }

  void onClearSignature() {
    signatureImage = null;
    widget.onChangeSignature(null);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${widget.title}",
          style: TextStyle(
            fontSize: 18,
            color: AppTheme.black,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppTheme.white,
            border: Border.all(
              color: AppTheme.gray9CA3AF,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              signatureImage != null
                  ? Image.memory(signatureImage!, width: 100, height: 100)
                  : SizedBox(
                      width: 100,
                      height: 100,
                      child: Icon(size: 60, Icons.back_hand_outlined)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  signatureImage == null
                      ? ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return DrawSignature(
                                onSaveSignature: onSaveSignature,
                              );
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.sppBlue,
                          ),
                          child: Text(
                            'ลายเซ็น',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.white,
                            ),
                          ))
                      : ElevatedButton(
                          onPressed: () {
                            onClearSignature();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.sppBlue,
                          ),
                          child: Text(
                            'ลบ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.white,
                            ),
                          )),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
