import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:market_place/modules/json_to_arr.dart';
import 'package:market_place/widgets/grid_cards_widgets.dart';


class ProductCard extends StatelessWidget {
  final String imagePath;
  final int cost;
  final String description;
  final String name;
  final dynamic imageSlider;

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
      convertedImageSlider = List<String>.from(imageSlider);
    } else if (imageSlider is Map<String, dynamic>) {
      var jsonToArr = JsonToArr.fromJson(imageSlider);
      convertedImageSlider = jsonToArr.urls;
    }

    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: buildBottomBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: convertedImageSlider.map((image) {
                  return Image.network(image); // Assuming your images are URLs
                }).toList(),
                options: CarouselOptions(height: 200.0),
              ),
              const SizedBox(height: 16),
              Column(
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
                  SingleChildScrollView(
                    child: Text(
                      description,
                      style: const TextStyle(fontSize: 16),
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
                        "В корзину",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
