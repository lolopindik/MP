import 'package:flutter/material.dart';
import 'package:market_place/pages/product_card.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../widgets/grid_cards_widgets.dart';

class GridCards extends StatefulWidget {
  const GridCards({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GridCardsState createState() => _GridCardsState();
}

class _GridCardsState extends State<GridCards> {
  final _future = Supabase.instance.client.from('Product').select();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 180).floor();

    return Scaffold(
      appBar: buildAppBar(context),
      drawer: buildDrawer(context),
      backgroundColor: Colors.white,
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          final productList = snapshot.data!;
          return GridView.builder(
            itemCount: productList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final product = productList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductCard(
                        imagePath: product['imagePaths'],
                        cost: product['price'],
                        description: product['description'],
                        name: product['name'],
                        imageSlider: product['imageSlider'],
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            product['imagePaths'],
                            height: MediaQuery.of(context).size.height * 0.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Название товара",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "${product['price']} руб.",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}