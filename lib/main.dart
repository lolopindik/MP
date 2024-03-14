import 'package:flutter/material.dart';
import 'package:market_place/modules/constants.dart';
import 'package:market_place/modules/logic.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:flutter/services.dart';

Future<void> main() async {
  //подключение бд
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: Constants.supabaseUrl,
    anonKey: Constants.supabaseAnnonKey
  );
  runApp(const MyApp());
}
