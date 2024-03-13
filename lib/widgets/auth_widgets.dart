import 'package:flutter/material.dart';

AppBar buildAuthAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'OZON',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.blue,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
