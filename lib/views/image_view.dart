import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  final String imgUrl;
  const ImageView({Key? key, required this.imgUrl}) : super(key: key);

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgUrl,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.network(widget.imgUrl, fit: BoxFit.cover),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white60, width: 1),
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [
                  Color(0x36FFFFFF),
                  Color(0xFFFFFFFF),
                ],
              ),
            ),
            child: Column(
              children: const <Widget>[
                Text('Set Wallpaper'),
                Text('Image will be saved in gallery',
                    style: TextStyle(fontSize: 10, color: Colors.white70)),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Cancel',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
