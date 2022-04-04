import 'package:flutter/material.dart';
import 'package:kevin_wallpaper/widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: "search"),
                  ),
                ),
                Icon(Icons.search),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
