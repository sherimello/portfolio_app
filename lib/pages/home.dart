import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool shouldShowAchievements = false.obs;
    var size = Get.size;
    var appBarHeight = AppBar().preferredSize.height;

    return Obx(() => Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemIndigo,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/portfolio_icon.png",
              width: size.width * .075,
              height: size.width * .075,
            ),
            const Text(
              "  portFolio",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 45.0, bottom: 11),
                    child: Container(
                      width: size.width * .41,
                      height: size.width * .41,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: CupertinoColors.systemIndigo.withOpacity(.25)),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1000),
                          child: Image.asset(
                            "assets/images/me.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "shahriar rahman (inan)",
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: size.width * .055,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "senior software engineer",
                    style: TextStyle(
                      color: CupertinoColors.systemGrey,
                      fontSize: size.width * .039,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: CupertinoColors.systemIndigo.withOpacity(.25),
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text.rich(TextSpan(children: [
                        const WidgetSpan(
                            child: Icon(CupertinoIcons.mail),
                            alignment: PlaceholderAlignment.middle),
                        TextSpan(
                          text: "  shahriarr.inan@gmail.com",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: size.width * .039,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ])),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: CupertinoColors.systemIndigo.withOpacity(.25),
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text.rich(TextSpan(children: [
                        const WidgetSpan(
                            child: Icon(CupertinoIcons.phone),
                            alignment: PlaceholderAlignment.middle),
                        TextSpan(
                          text: "  +8801946928928",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: size.width * .039,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ])),
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 21,
                left: 21,
                right: 21,
                child: Container(
                  width: size.width,
                  height: appBarHeight * .85,
                  decoration: BoxDecoration(
                      color: CupertinoColors.systemIndigo,
                      borderRadius: BorderRadius.circular(1000)),
                  child: const Center(
                    child: Text(
                      "view skill sets",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 28 + appBarHeight * .85,
                left: 21,
                right: 21,
                child: GestureDetector(
                  onTap: () {
                    shouldShowAchievements.value = !shouldShowAchievements.value;
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 555),
                    curve: Curves.linearToEaseOut,
                    width: size.width,
                    height: shouldShowAchievements.value ? 300 : appBarHeight * .85,
                    decoration: BoxDecoration(
                        color: shouldShowAchievements.value ? Colors.black : CupertinoColors.systemIndigo,
                        borderRadius: BorderRadius.circular(1000)),
                    child: Center(
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 555),
                        curve: Curves.linearToEaseOut,
                        opacity: shouldShowAchievements.value ? 0 : 1,
                        child: const Text(
                          "view achievements",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
