import 'package:flutter/material.dart';
import 'package:kevin_wallpaper/views/home.dart';
import 'package:kevin_wallpaper/views/categorie.dart';
import 'package:kevin_wallpaper/views/search.dart';
import 'package:kevin_wallpaper/views/image_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WallpaperHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const Home(),
    );
  }
}
