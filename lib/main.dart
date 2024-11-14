import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url:'https://jzdanklvuqpajinjvadw.supabase.co',
      anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp6ZGFua2x2dXFwYWppbmp2YWR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1NTM5ODIsImV4cCI6MjA0NzEyOTk4Mn0.VL30Q0qYS0Y3lgyPYx8b9kxo8oUMvwVSa9q2a4r_iUQ');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Perpustakaan',
      home: BookListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}