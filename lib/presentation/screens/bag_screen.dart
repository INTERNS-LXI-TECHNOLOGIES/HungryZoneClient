import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

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
                  child: Text('demo'),
                ),
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
