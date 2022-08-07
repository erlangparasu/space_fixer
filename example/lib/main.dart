import 'package:flutter/material.dart';
import 'package:space_fixer/space_fixer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Fixer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Space Fixer Demo"),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child:
                Text("Scroll black boxes below vertically to see difference"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text("Before 😰"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 * 0.80,
                    child: ListView(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      children: const [
                        BlackContainer(),
                        BlackContainer(),
                        BlackContainer(),
                        BlackContainer(),
                        BlackContainer(),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text("After 😃"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 * 0.80,
                    child: ListView(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      children: const [
                        BlackContainer(),
                        SpaceFixerHorizontalLine(
                          overflowHeight: 3,
                          overflowColor: Colors.black,
                        ),
                        BlackContainer(),
                        SpaceFixerHorizontalLine(
                          overflowHeight: 3,
                          overflowColor: Colors.black,
                        ),
                        BlackContainer(),
                        SpaceFixerHorizontalLine(
                          overflowHeight: 3,
                          overflowColor: Colors.black,
                        ),
                        BlackContainer(),
                        SpaceFixerHorizontalLine(
                          overflowHeight: 3,
                          overflowColor: Colors.black,
                        ),
                        BlackContainer(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child:
                Text("Scroll black boxes below horizontally to see difference"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text("Before 😰"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 * 0.80,
                    height: MediaQuery.of(context).size.height / 2 * 0.80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      children: const [
                        BlackContainer(),
                        BlackContainer(),
                        BlackContainer(),
                        BlackContainer(),
                        BlackContainer(),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text("After 😃"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 * 0.80,
                    height: MediaQuery.of(context).size.height / 2 * 0.80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      children: const [
                        BlackContainer(),
                        SpaceFixerVerticalLine(
                          overflowWidth: 3,
                          overflowColor: Colors.black,
                        ),
                        BlackContainer(),
                        SpaceFixerVerticalLine(
                          overflowWidth: 3,
                          overflowColor: Colors.black,
                        ),
                        BlackContainer(),
                        SpaceFixerVerticalLine(
                          overflowWidth: 3,
                          overflowColor: Colors.black,
                        ),
                        BlackContainer(),
                        SpaceFixerVerticalLine(
                          overflowWidth: 3,
                          overflowColor: Colors.black,
                        ),
                        BlackContainer(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BlackContainer extends StatelessWidget {
  const BlackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.black,
    );
  }
}
