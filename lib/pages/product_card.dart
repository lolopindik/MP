import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:market_place/widgets/grid_cards_widgets.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final int cost;
  final String description;
  final String name;
  final dynamic
      imageSlider; // Accept dynamic type for flexibility (stackoverflow)

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.cost,
    required this.description,
    required this.name,
    required this.imageSlider,
  });

  @override
  Widget build(BuildContext context) {
    List<String> convertedImageSlider = [];

    if (imageSlider is List) {
      // If imageSlider is already a List, use it directly
      convertedImageSlider = List<String>.from(imageSlider);
    } else if (imageSlider is Map<String, dynamic>) {
      // If imageSlider is a Map, try to extract the 'urls' field assuming it's a list
      var urls = imageSlider['urls'];
      if (urls is List) {
        convertedImageSlider = List<String>.from(urls);
      } else if (urls is String) {
        // If 'urls' is a string, parse it as JSON and extract the list
        try {
          var urlsList = jsonDecode(urls);
          if (urlsList is List) {
            convertedImageSlider = List<String>.from(urlsList);
          }
        } catch (e) {
          // ignore: avoid_print
          print('Error decoding JSON: $e');
        }
      }
    }

    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: buildBottomBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CarouselSlider(
                items: convertedImageSlider.map((image) {
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        // Handle button press
                      },
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
