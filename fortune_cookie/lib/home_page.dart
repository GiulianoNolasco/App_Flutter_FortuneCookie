import 'dart:math';
import 'package:flutter/material.dart';
import 'constants/image_path.dart';
import 'list_fortune_cookie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? numberRandom;

  void _getFortuneCookie() {
    numberRandom = Random().nextInt(fortuneCookies.length);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade200,
        title: Text(widget.title),
      ),
      body: incluiStack(),
    );
  }

  Widget incluiStack() {
    return Stack(
      //alignment: Alignment.topRight,
      children: <Widget>[
        Image.asset(
          'lib/images/background.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Container(
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(ImagePath.fortuneCookie),
                ),
              ),
            ),
            const SizedBox(),
            if (numberRandom != null)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  textAlign: TextAlign.center,
                  fortuneCookies[numberRandom!],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
            _buildButtonGenarateSentece(),
          ],
        ),
      ],
    );
  }

  _buildButtonGenarateSentece() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        onPressed: () {
          _getFortuneCookie();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.add),
            Text('Click here for your Fortune Cookie!'),
          ],
        ),
      ),
    );
  }
}
