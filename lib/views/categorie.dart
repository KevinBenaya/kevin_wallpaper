import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kevin_wallpaper/data/data.dart';
import 'package:kevin_wallpaper/widgets/widget.dart';
import 'package:kevin_wallpaper/model/wallpaper_model.dart';

class CategorieScreen extends StatefulWidget {
  final String categorieName;

  const CategorieScreen({Key? key, required this.categorieName})
      : super(key: key);

  @override
  State<CategorieScreen> createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen> {
  List<WallpaperModel> wallpapers = [];

  getCategorieWallpaper() async {
    var response = await http.get(
        Uri.parse("https://api.pexels.com/v1/search?query=nature&per_page=1"),
        headers: {"Authorization": apiKey});

    //print(response.body.toString());

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      // print(element)    });
      WallpaperModel wallpaperModel = WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });

    setState(() {});
  }

  @override
  void initState() {
    getSearchWallpapers(widget.categorieName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 16),
              wallpapersList(wallpapers: wallpapers, context: context);
            ],
          ),
        ),
      ),
    );
  }
}
