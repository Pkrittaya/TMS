import 'package:flutter/material.dart';

class TransportPage extends StatefulWidget {
  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  @override
  void initState() {
    debugPrint('test transport');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Transport Screen", style: TextStyle(fontSize: 24)),
    );
  }
}
