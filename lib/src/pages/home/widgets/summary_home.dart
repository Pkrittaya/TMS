import 'package:flutter/material.dart';
import 'package:tms/src/apptheme.dart';

class SummaryHome extends StatelessWidget {
  const SummaryHome({
    super.key,
    this.text = "",
    this.count = "",
    this.iconData = Icons.check_circle_outline,
  });

  final String text;
  final String count;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.44,
      height: 80,
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppTheme.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(size: 35, color: AppTheme.sppBlue60, iconData),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                count,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.red,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.gray9CA3AF,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
