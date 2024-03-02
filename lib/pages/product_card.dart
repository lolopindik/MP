import 'package:flutter/material.dart';
import 'package:market_place/widgets/grid_cards_widgets.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final int cost;
  final String description;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.cost,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                imagePath,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Название товара",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "$cost руб.",
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      //бужет вынесен в отдельный виждет
      bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context); 
                },
              ),
            ],
          ),
      ),
    );
  }
}
