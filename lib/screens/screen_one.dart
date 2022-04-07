import 'package:car_app/screens/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x0003b35e),
      body: SingleChildScrollView(
        child: Container(
            child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  
                  children: [
                     const Text(
                      "Welcome Samuel",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Swipe left/righ to view other cars",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.yellow[300],
                          fontStyle: FontStyle.italic),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: Image.asset(
                          "assets/images/carlogo.png",
                          scale: 0.6,
                        )),
                    Container(
                        margin:const EdgeInsets.only(top: 50),
                        child: Image.asset(
                          "assets/images/audi.png",
                          scale: 1,
                        )),
                    const Text(
                      "Repeair credit balance",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 56, 54, 54),
                      ),
                    ),
                    Container(
                        margin:const  EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                              const Text(
                              "N",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                             const Text(
                              "122,300",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 50, bottom: 30),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ScreenTwo()),
                          );
                        },
                        child: Text(
                          "Swipe up to use service",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.yellow[300],
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
