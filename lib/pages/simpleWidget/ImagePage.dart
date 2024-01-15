import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("ImagePage")),
        body: ListView(
          children: <Widget>[
            new Text("从网络加载图片"),
            CachedNetworkImage(
              imageUrl: 'https://scpic.chinaz.net/files/default/imgs/2023-07-12/40fd0b90e02f7fd4.jpg',
              placeholder: (context,url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            new Image.network(
              "https://p1.ssl.qhmsg.com/dr/220__/t01d5ccfbf9d4500c75.jpg",
              width: 500,
              height: 500,
            ),
            new Text('从本地加载图片'),
            new Image.asset(
              'images/aaa.png',
              width: 500,
              height: 500,
            )
          ],
        ));
  }
}
