import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../const/const.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({Key? key}) : super(key: key);

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green.shade900,
                kGreen,
                Colors.green.shade400,
              ],
              begin: Alignment.topRight,
              end: Alignment.centerLeft,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Center(
                    child: Text('demo')
                        .animate()
                        .fadeIn(delay: 300.ms, duration: 500.ms)
                        .then() // sets own delay to 800ms (300+500)
                        .slide(duration: 400.ms) // inherits the 800ms delay
                        .then(
                            delay:
                                2000.ms) // sets delay to 1400ms (800+400+200)
                        .blur() // inherits the 1400ms delay
                        // Explicitly setting delay overrides the inherited value.
                        // This move effect will run BEFORE the initial fade:
                        .move(delay: 0.ms)),
              ),
              Expanded(
                child: Container(
                  child: Text('hello'),
                  color: Color.fromARGB(31, 225, 41, 41),
                  height: 500,
                  width: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
