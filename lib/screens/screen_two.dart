import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    var textStyle =
        TextStyle(fontSize: 18, color: Color.fromARGB(255, 218, 204, 84));
    final PageController controller = PageController(
      viewportFraction: 0.7,
      initialPage: 0,
    );
    return Scaffold(
        backgroundColor: const Color(0x0003b35e),
        body: SingleChildScrollView(
            child: Stack(children: [
          Container(
              margin: const EdgeInsets.only(top: 30, left: 5, right: 5),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/images/back_arrow.png",
                            scale: 0.6,
                          ),
                        ),
                        Image.asset(
                          "assets/images/menu_bar.png",
                          scale: 0.6,
                        ),
                      ]))),
          Container(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(children: [
                    Container(
                        margin: const EdgeInsets.only(top: 130),
                        child: Image.asset(
                          "assets/images/carlogo.png",
                          scale: 0.5,
                        )),
                    Container(
                        height: 40,
                        width: 400,
                        margin:
                            const EdgeInsets.only(top: 30, left: 50, right: 50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0x0003b35e),
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 237, 74),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("AUDI", style: textStyle),
                            Text('A6', style: textStyle),
                            Text('EXT434TG', style: textStyle)
                          ],
                        )),
                    Container(
                        height: 250,
                        color: Colors.transparent,
                        margin: const EdgeInsets.only(top: 5),
                        child: Stack(
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: PageView(
                                  controller: controller,
                                  physics: const ClampingScrollPhysics(),
                                  children: <Widget>[
                                    Center(
                                      child: Image.asset(
                                        "assets/images/audi.png",
                                        scale: 0.6,
                                      ),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        "assets/images/audi.png",
                                        scale: 0.6,
                                      ),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        "assets/images/audi.png",
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: holder("NEXT SERVICE")),
                            SizedBox(width: 40),
                            Expanded(child: holder("DOCUMENT EXPIRING")),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.only(top: 70),
                        child: Column(
                          children: [
                            services("QUICK FIX"),
                            accident(),
                            services("SERVICE REQUEST")
                          ],
                        )),
                  ])))
        ])));
  }
}

Widget services(action) {
  return Container(
    height: 60,
    width: 400,
    margin: const EdgeInsets.only(left: 10, right: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0x0003b35e),
        border: Border.all(
          color: const Color.fromARGB(255, 255, 237, 74),
        )),
    child: Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              "assets/images/vector.png",
              // scale: 0.5,
            ),
          ),
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              action,
              style: TextStyle(fontSize: 20, color: Colors.yellow),
            ))
      ],
    ),
  );
}

Widget accident() {
  return Container(
    height: 60,
    width: 400,
    margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 92, 12, 6)),
    child: Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/images/add.png",
              )),
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              "ACCIDENT",
              style: TextStyle(fontSize: 20, color: Colors.yellow),
            ))
      ],
    ),
  );
}

Widget holder(todo) {
  return Container(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(bottom: 5, left: 15),
        child: Text(todo,
            style: TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 58, 57, 57))),
      ),
      Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 54, 52, 52)),
        child: Center(
          child: Text("NOV 30, 2021",
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      )
    ],
  ));
}
