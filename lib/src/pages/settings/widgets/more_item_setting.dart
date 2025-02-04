import 'package:flutter/material.dart';
import 'package:tms/src/apptheme.dart';

// ignore: must_be_immutable
class moreItemSetting extends StatelessWidget {
  const moreItemSetting({super.key, this.title = ""});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          highlightColor: AppTheme.black5,
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Ink(
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppTheme.grayD1D5DB,
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(Icons.abc_sharp),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      title,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppTheme.gray9CA3AF,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 8)
      ],
    );
  }
}
