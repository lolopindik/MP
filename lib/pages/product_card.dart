import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:market_place/widgets/grid_cards_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final int cost;
  final String description;
  final String name;
  final List<String> imageSlider;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.cost,
    required this.description,
    required this.name,
    required this.imageSlider,
  });

  factory ProductCard.fromMap(Map<String, dynamic> product) {
    List<String> imageSlider =
        jsonDecode(product['imageSlider']).cast<String>();

    return ProductCard(
      imagePath: product['imagePaths'],
      cost: product['price'],
      description: product['description'],
      name: product['name'],
      imageSlider: imageSlider,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CarouselSlider(
                items: imageSlider.map((image) {
                  return Image.network(image); // Assuming your images are URLs
                }).toList(),
                options: CarouselOptions(height: 200.0),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$cost руб.",
                    style: const TextStyle(fontSize: 18, color: Colors.green),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        description,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {},
                      child: const Text(
                        "Купить",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
