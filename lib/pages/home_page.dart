import 'package:flutter/material.dart';
import '/models/item.dart';
import '/widgets/footer.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Joran',
      price: 2500000,
      imageUrl: 'assets/images/joran.jpeg',
      stock: 40,
      rating: 4.2,
    ),
    Item(
      name: 'Jig',
      price: 8000,
      imageUrl: 'assets/images/jig.jpeg',
      stock: 50,
      rating: 4.7,
    ),
    Item(
      name: 'Reel',
      price: 120000,
      imageUrl: 'assets/images/reel.jpeg',
      stock: 37,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ItemCard(item: items[index]);
                },
              ),
            ),
          ),
          Footer(name: 'Moh.Rendi Setiawan', nim: '362358302167'),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/item', arguments: item);
        },
        child: ListTile(
          leading: Image.asset(item.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
          title: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text('Stock: ${item.stock} | Rating: ${item.rating}'),
          trailing: Text('Rp ${item.price}', textAlign: TextAlign.end),
        ),
      ),
    );
  }
}
