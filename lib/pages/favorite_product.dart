import 'package:flutter/material.dart';
import 'package:market_place/widgets/grid_cards_widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _Favorite();
}

class _Favorite extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: buildBottomBar(context),
    );
  }
}