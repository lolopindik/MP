import 'package:flutter/material.dart';

class Product {
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

  static List<String> getDescription() {
    return [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      ''
    ];
  }
}
// #### Переделать массивы для оптимизации кода
// class ProductNew {
//   final String link;
//   final int cost;
//   ProductNew({required this.link, required this.cost});
// }
// List<ProductNew> newArray = [ProductNew(link: "https://", cost: 200)];