import 'package:flutter/material.dart';

class ImageRoute extends StatefulWidget {
  const ImageRoute({super.key, required this.title});

  final String title;

  @override
  State<ImageRoute> createState() => _ImageRouteState();
}

class _ImageRouteState extends State<ImageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage("assets/images/1.jpg"), width: 100.0),
          Image(
            image: NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100.0,
          ),
          Image.network(
            "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            width: 100.0,
          ),
          ImageAndIconRoute(),
          Icon(Icons.accessible, color: Colors.green),
          Icon(Icons.error, color: Colors.green),
          Icon(Icons.fingerprint, color: Colors.green),
        ],
      )),
    );
  }
}

class ImageAndIconRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var img = AssetImage("assets/images/1.jpg");
    return SingleChildScrollView(
      child: Column(
          children: <Image>[
        Image(
          image: img,
          height: 50.0,
          width: 100.0,
          fit: BoxFit.fill,
        ),
        Image(
          image: img,
          height: 50,
          width: 50.0,
          fit: BoxFit.contain,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 50.0,
          fit: BoxFit.cover,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 50.0,
          fit: BoxFit.fitWidth,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 50.0,
          fit: BoxFit.fitHeight,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 50.0,
          fit: BoxFit.scaleDown,
        ),
        Image(
          image: img,
          height: 50.0,
          width: 100.0,
          fit: BoxFit.none,
        ),
        Image(
          image: img,
          width: 100.0,
          color: Colors.blue,
          colorBlendMode: BlendMode.difference,
          fit: BoxFit.fill,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 200.0,
          repeat: ImageRepeat.repeatY,
        )
      ].map((e) {
        return Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: 100,
                child: e,
              ),
            ),
            Text(e.fit.toString())
          ],
        );
      }).toList()),
    );
  }
}
