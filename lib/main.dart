import 'package:flutter/material.dart';
import 'pages/grid_cards.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  //подключение бд
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://nkcjhwcuebcqbvumcism.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5rY2pod2N1ZWJjcWJ2dW1jaXNtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk2MjM2MDAsImV4cCI6MjAyNTE5OTYwMH0.DrND9DtkAvz5Ep5WmD6OWmYffffAW_b0O5AovLEZ0uY',
  );
  runApp(const MyApp());
}

//позже перенести в logic_page.dart

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:const  GridCards(),
    );
  }
}
