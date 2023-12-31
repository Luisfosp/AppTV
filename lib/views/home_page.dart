import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/data.dart';
import 'details_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luisfo TV'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: GridView(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: images
            .map((url) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => DetailsScreen(
                          url: links[images.indexOf(url)],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.network(
                          url,
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}