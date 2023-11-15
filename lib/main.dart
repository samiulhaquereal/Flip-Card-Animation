import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late FlipCardController controller;

  @override
  void initState() {
    controller = FlipCardController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
                //direction: FlipDirection.HORIZONTAL,
                //side: CardSide.FRONT,
                //speed: 1000,
                onFlipDone: (status) {
                  print(status);
                },
                flipOnTouch: false,
                controller: controller,
                front: Container(
                  color: Colors.blue,
                  height: 300,
                  width: 300,
                ),
                back: Container(
                  color: Colors.redAccent,
                  height: 300,
                  width: 300,
                )),
            ElevatedButton(
                onPressed: () {
                  controller.toggleCard();
                },
                child: Text('Flip'))
          ],
        ),
      ),
    ));
  }
}
