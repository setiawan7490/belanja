import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String name;
  final String nim;

  Footer({required this.name, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(name, style: TextStyle(fontSize: 16)),
          Text(nim, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}


