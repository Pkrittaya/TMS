import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tms/src/apptheme.dart';

class ImageProduct extends StatefulWidget {
  const ImageProduct(
      {super.key, required this.onSaveImage, required this.title});

  final Function(File? image) onSaveImage;
  final String title;

  @override
  State<ImageProduct> createState() => _ImageProductState();
}

class _ImageProductState extends State<ImageProduct> {
  File? _image;
  ImagePicker _picker = ImagePicker();

  // 📷 เลือกรูปจากกล้องหรือแกลเลอรี
  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      widget.onSaveImage(_image);
    }
  }

  void onClearImage() {
    _image = null;
    widget.onSaveImage(null);
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _image == null
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Icon(size: 60, Icons.hide_image_outlined))
                    : Image.file(_image!,
                        fit: BoxFit.cover, width: 100, height: 100),
                Row(
                  mainAxisAlignment: _image == null
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.end,
                  children: [
                    _image == null
                        ? ElevatedButton(
                            onPressed: () {
                              pickImage(ImageSource.camera);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.sppBlue,
                            ),
                            child: Text(
                              'ถ่ายภาพ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppTheme.white,
                              ),
                            ))
                        : const SizedBox(),
                    const SizedBox(
                      width: 6,
                    ),
                    _image == null
                        ? ElevatedButton(
                            onPressed: () {
                              pickImage(ImageSource.gallery);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.sppBlue,
                            ),
                            child: Text(
                              'แกลลอรี่',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppTheme.white,
                              ),
                            ))
                        : const SizedBox(),
                    const SizedBox(
                      width: 6,
                    ),
                    _image != null
                        ? ElevatedButton(
                            onPressed: () {
                              onClearImage();
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
                            ))
                        : const SizedBox()
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
