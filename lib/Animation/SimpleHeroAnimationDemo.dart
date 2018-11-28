import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new HeroAnimatedDemo()));
}

class HeroAnimatedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("HeroDemo"),
      ),
      body: new InkWell(
        child: new Hero(tag: "hero", child: new Image.asset("images/a.png")),
        onTap: () {
          Navigator.of(context)
              .push(new MaterialPageRoute(builder: (BuildContext context) {
            return new Scaffold(
              appBar: new AppBar(
                title: new Text("Second Page"),
              ),
              body: new Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.topCenter,
                child: new Hero(
                    tag: "hero",
                    child: new SizedBox(
                      width: 100.0,
                      child: new Image.asset("images/a.png"),
                    )),
              ),
            );
          }));
        },
      ),
    );
  }
}

//http://flutter.link/2018/05/11/Flutter%E5%8A%A8%E7%94%BB%E3%80%901%E3%80%91/
