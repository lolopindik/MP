import 'package:flutter/material.dart';
import '../types/product.dart';
import '../widgets/grid_cards_widgets.dart';

class GridCards extends StatelessWidget {
  const GridCards({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 180).floor();

    return Scaffold(
      appBar: buildAppBar(context),
      drawer: buildDrawer(context),
      backgroundColor: Colors.white,
      body: GridView.builder(
        itemCount: Product.getimagePaths().length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final imagePath = Product.getimagePaths()[index];
          final cost = Product.getCost()[index];

          return Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      imagePath,
                      height: MediaQuery.of(context).size.height * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Название товара", // в ДАЛЬНЕЙШЕМ СЛЕДУЕТ ЗАМЕНИТЬ НА НАСТОЯЩЕЕ НАЗВАНИЕ
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "$cost руб.",
                    style: const TextStyle(fontSize: 14, color: Colors.green),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
