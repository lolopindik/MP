import 'package:flutter/material.dart';
import 'product.dart';

class GridCards extends StatelessWidget {
  const GridCards({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 180).floor();

    return Scaffold(
      appBar: _buildAppBar(context),
      drawer: _buildDrawer(context),
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

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "OZON",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      backgroundColor: Colors.blue,
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite, color: Colors.red),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_basket, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.supervised_user_circle, color: Colors.white),
          onPressed: () {},
        ),
      ],
      flexibleSpace: _buildSearchBar(context), // Добавляем поисковую строку
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: Container(
            width: constraints.maxWidth * 0.3,
            height: constraints.maxHeight * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: '...',
                border: InputBorder.none,
              ),
            ),
          ),
        );
      },
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'Фильтр товаров',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          // ... (add items for filtre)
        ],
      ),
    );
  }
}
