class Product {
  int id;
  String name;
  int price;
  String imagePaths;
  String description;
  List<String> imageSlider;
  Product(this.id, this.name, this.price, this.imagePaths, this.description,
      this.imageSlider);
}

List<Product> productList = [
  Product(
      1,
      'Название товара',
      234,
      'https://ir.ozone.ru/s3/multimedia-h/wc1000/6697193273.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',
      [
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      2,
      'Название товара',
      290,
      'https://ir.ozone.ru/s3/multimedia-7/wc1000/6697203775.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',
      [
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      3,
      'Название товара',
      224,
      'https://ir.ozone.ru/s3/multimedia-v/wc1000/6846560119.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',[
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      4,
      'Название товара',
      221,
      'https://ir.ozone.ru/s3/multimedia-w/wc1000/6846560120.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."', [
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      5,
      'Название товара',
      257,
      'https://ir.ozone.ru/s3/multimedia-x/wc1000/6846560121.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',
      [
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      6,
      'Название товара',
      230,
      'https://ir.ozone.ru/s3/multimedia-o/wc1000/6846560076.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."', [
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      7,
      'Название товара',
      134,
      'https://ir.ozone.ru/s3/multimedia-z/wc1000/6846560087.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."', [
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      8,
      'Название товара',
      284,
      'https://ir.ozone.ru/s3/multimedia-1-p/wc1000/6927529081.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',[
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      9,
      'Название товара',
      154,
      'https://ir.ozone.ru/s3/multimedia-q/wc1000/6379556774.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',[
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      10,
      'Название товара',
      90,
      'https://ir.ozone.ru/s3/multimedia-1-u/wc1000/6927529086.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',[
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      11,
      'Название товара',
      144,
      'https://ir.ozone.ru/s3/multimedia-1-t/wc1000/6927529085.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."', [
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      12,
      'Название товара',
      237,
      'https://ir.ozone.ru/s3/multimedia-b/wc1000/6846263639.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',[
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      13,
      'Название товара',
      134,
      'https://ir.ozone.ru/s3/multimedia-b/wc1000/6873947831.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',[
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      14,
      'Название товара',
      234,
      'https://ir.ozone.ru/s3/multimedia-f/wc1000/6360372039.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',[
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ]),
  Product(
      15,
      'Название товара',
      334,
      'https://ir.ozone.ru/s3/multimedia-h/wc1000/6826586525.jpg',
      '"Мощный союз эффективности и заботы: наша бытовая химия обеспечивает идеальную чистоту, сохраняя природу и заботясь о вашем доме."',[
        'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
        'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
        'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'
      ])
];


// 'https://ir.ozone.ru/s3/multimedia-8/wc1000/6871196672.jpg',
// 'https://ir.ozone.ru/s3/multimedia-y/wc1000/6871196626.jpg',
// 'https://ir.ozone.ru/s3/multimedia-d/wc1000/6871196605.jpg'