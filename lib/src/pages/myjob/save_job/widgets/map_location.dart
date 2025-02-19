import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:tms/src/apptheme.dart';

class MapLocation extends StatelessWidget {
  const MapLocation({super.key, this.currentPosition});

  final Position? currentPosition;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppTheme.white,
          border: Border.all(
            color: AppTheme.gray9CA3AF,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: (currentPosition == null)
            ? Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.map),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                          '${currentPosition?.latitude ?? 0} , ${currentPosition?.longitude ?? 0}')
                    ],
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                ],
              ));
  }
}
