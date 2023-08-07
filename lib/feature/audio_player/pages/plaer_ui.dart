import 'package:flutter/material.dart';
import 'package:youdcast/consts/appcolor.dart' as appcolor;

import '../model/audio_file.dart';

class Detaileplayer extends StatefulWidget {
  const Detaileplayer({super.key});

  @override
  State<Detaileplayer> createState() => _DetaileplayerState();
}

class _DetaileplayerState extends State<Detaileplayer> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    // AudioPlayer advancedPlayer = AudioPlayer();

    return Scaffold(
      backgroundColor: appcolor.mbackground,
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
                actions: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  )
                ]),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: height * .2,
            height: height * .36,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * .1,
                  ),
                  const Text(
                    "THE WATER CURE",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Martine hayate",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                    // AudioFile(advacedPlyer:advancedPlayer),
                ],
              ),
            ),
          ),
          Positioned(
              top: height * 0.12,
              left: (width - 150) / 2,
              right: (width - 150) / 2,
              height: height * 0.16 ,              child: Container(
                decoration: BoxDecoration(
                  color: appcolor.mbackground,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(22),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                      image: const DecorationImage(
                          image: AssetImage("images/img.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
