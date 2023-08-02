import 'package:flutter/material.dart';
import 'package:youdcast/consts/appcolor.dart' as appcolor;

class Detaileplayer extends StatefulWidget {
  const Detaileplayer({super.key});

  @override
  State<Detaileplayer> createState() => _DetaileplayerState();
}

class _DetaileplayerState extends State<Detaileplayer> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            height: height / 3,
            child: Container(
              color: appcolor.mblue,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
             child: AppBar(
              backgroundColor: appcolor.mblue,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {},
              ),
              actions: [ IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},)]
            ),
          )
        ],
      ),
    );
  }
}
