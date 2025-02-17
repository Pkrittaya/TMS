import 'package:flutter/widgets.dart';
import 'package:tms/src/apptheme.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        alignment: Alignment.topLeft,
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppTheme.grayD1D5DB),
          boxShadow: [
            BoxShadow(
              color: AppTheme.grayD4A50,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: child);
  }
}
