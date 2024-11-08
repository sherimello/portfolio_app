import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    var appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, bottom: 11),
                  child: Image.asset(
                    "assets/images/achievements.png",
                    width: size.width * .35,
                    height: size.width * .35,
                  ),
                ),
                Text(
                  "achievements",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, fontSize: size.width * .075, color: Colors.white),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 31,
                      ),
                      Container(
                        width: size.width * .87,
                        height: appBarHeight * 1.65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            border: Border.all(width: 1, color: Colors.white)),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: ListTile(
                                  title: Text(
                                    "ranked 3rd",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: CupertinoColors.systemIndigo,
                                        fontSize: size.width * .055),
                                  ),
                                  subtitle: Text("Nasa Space App Challenge", style: TextStyle(color: Colors.white),),
                                  titleAlignment: ListTileTitleAlignment.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: size.width * .87,
                        height: appBarHeight * 1.65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            border: Border.all(width: 1, color: Colors.white)),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: ListTile(
                                  title: Text(
                                    "achieved certificate",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: CupertinoColors.systemIndigo,
                                        fontSize: size.width * .055),
                                  ),
                                  subtitle: Text("Flutter Udemy Crash Course", style: TextStyle(color: Colors.white),),
                                  titleAlignment: ListTileTitleAlignment.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        width: size.width * .87,
                        height: appBarHeight * 1.65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            border: Border.all(width: 1, color: Colors.white)),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: ListTile(
                                  title: Text(
                                    "joined as trainer",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: CupertinoColors.systemIndigo,
                                        fontSize: size.width * .055),
                                  ),
                                  subtitle: const Text("IIUC IEEE Crash Course", style: TextStyle(color: Colors.white),),
                                  titleAlignment: ListTileTitleAlignment.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
