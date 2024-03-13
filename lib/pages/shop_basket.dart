import 'package:flutter/material.dart';
import 'package:market_place/widgets/mp_widgets.dart';

class ShopBasket extends StatefulWidget {
  const ShopBasket({super.key});

  @override
  State<ShopBasket> createState() => _ShopBasketState();
}

class _ShopBasketState extends State<ShopBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: buildBottomBar(context),
    );
  }
}