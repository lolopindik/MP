import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OZON',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const GridCards(),
    );
  }
}

class Card {
  static List<String> getimagePaths() {
    return [
      'https://ir.ozone.ru/s3/multimedia-h/wc1000/6697193273.jpg',
      'https://ir.ozone.ru/s3/multimedia-7/wc1000/6697203775.jpg',
      'https://ir.ozone.ru/s3/multimedia-v/wc1000/6846560119.jpg',
      'https://ir.ozone.ru/s3/multimedia-w/wc1000/6846560120.jpg',
      'https://ir.ozone.ru/s3/multimedia-x/wc1000/6846560121.jpg',
      'https://ir.ozone.ru/s3/multimedia-o/wc1000/6846560076.jpg',
      'https://ir.ozone.ru/s3/multimedia-z/wc1000/6846560087.jpg',
      'https://ir.ozone.ru/s3/multimedia-1-p/wc1000/6927529081.jpg',
      'https://ir.ozone.ru/s3/multimedia-q/wc1000/6379556774.jpg',
      'https://ir.ozone.ru/s3/multimedia-1-u/wc1000/6927529086.jpg',
      'https://ir.ozone.ru/s3/multimedia-1-t/wc1000/6927529085.jpg',
      'https://ir.ozone.ru/s3/multimedia-b/wc1000/6846263639.jpg',
      'https://ir.ozone.ru/s3/multimedia-b/wc1000/6873947831.jpg',
      'https://ir.ozone.ru/s3/multimedia-f/wc1000/6360372039.jpg',
      'https://ir.ozone.ru/s3/multimedia-h/wc1000/6826586525.jpg',
    ];
  }

  static List<int> getCost() {
    return [
      300,
      400,
      500,
      345,
      562,
      234,
      456,
      123,
      344,
      347,
      677,
      324,
      293,
      435,
      235
    ];
  }
}

class GridCards extends StatelessWidget {
  const GridCards({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 180).floor();

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              const Text(
                "OZON",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Container(width: MediaQuery.of(context).size.width * 0.09,), // Adjust the spacing between "OZON" and the search field
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none, // Remove border around the TextField
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: IconButton(
              icon: const Icon(Icons.favorite, color: Colors.red),
              onPressed: () {},
            ),
          ),
          Padding(
             padding: const EdgeInsets.only(top: 15.0),
            child: IconButton(
              icon: const Icon(Icons.shopping_basket, color: Colors.white),
              onPressed: () {},
            ),
          ),
          Padding(
             padding: const EdgeInsets.only(top: 15.0),
            child: IconButton(
              icon: const Icon(Icons.supervised_user_circle, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: SizedBox.shrink(),
        ),
      ),
      drawer: Drawer(
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
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        itemCount: Card.getimagePaths().length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      Card.getimagePaths()[index],
                      height: MediaQuery.of(context).size.height * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Название товара", //не будет добавляться в массив
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "${Card.getCost()[index]} руб.",
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
