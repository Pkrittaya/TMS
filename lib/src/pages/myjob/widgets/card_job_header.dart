import 'package:flutter/material.dart';
import 'package:tms/src/apptheme.dart';

class CardJobHeader extends StatelessWidget {
  const CardJobHeader(
      {super.key,
      required this.index,
      required this.child,
      this.onTap,
      required this.toggle,
      this.checkbox});

  final int index;
  final Widget child;
  final Function()? onTap;
  final bool toggle;
  final Widget? checkbox;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 40,
            decoration: BoxDecoration(
              color: AppTheme.sppBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                '$index',
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
              padding: EdgeInsets.symmetric(vertical: 10),
              child: (checkbox == null)
                  ? Icon(Icons.airline_seat_flat)
                  : checkbox),
          const SizedBox(
            width: 10,
          ),
          Container(padding: EdgeInsets.symmetric(vertical: 10), child: child),
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  toggle ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
