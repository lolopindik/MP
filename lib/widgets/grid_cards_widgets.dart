import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
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
    //нужно пофикстить поиск в appbar или переместить поиск в drawer
    flexibleSpace: buildSearchBar(context), // Добавляем поисковую строку
  );
}

Widget buildDrawer(BuildContext context) {
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

Widget buildSearchBar(BuildContext context) {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 400) {
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
      } else {
        return Container();
      }
    },
  );
}

Widget buildBottomBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5, left: 5),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
    ),
  );
}