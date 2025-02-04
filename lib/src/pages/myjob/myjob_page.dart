import 'package:flutter/material.dart';
import 'package:tms/src/apptheme.dart';

class MyjobPage extends StatefulWidget {
  const MyjobPage({super.key});

  @override
  State<MyjobPage> createState() => _MyjobPageState();
}

class _MyjobPageState extends State<MyjobPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: AppTheme.sppBlue,
                ),
              ),
              Positioned(
                top: 70,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Text(
                        'งานของฉัน',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.search),
                          hintText: "เลขที่ใบปิดบรรทุก",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 180),
          Container()
        ],
      ),
    );
  }
}
