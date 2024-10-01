import 'package:flutter/material.dart';
import '/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(item.imageUrl, fit: BoxFit.cover),
                SizedBox(height: 16),
                Text(item.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('Price: Rp ${item.price}', style: TextStyle(fontSize: 20)),
                SizedBox(height: 8),
                Text('Stock: ${item.stock}', style: TextStyle(fontSize: 18)),
                SizedBox(height: 8),
                Text('Rating: ${item.rating}', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

