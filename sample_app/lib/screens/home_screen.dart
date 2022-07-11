import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ShoesBrand model = ShoesBrand.all;
  var currentCategory = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('home'),
      ),
    );
    // var list = getProductFor(model: model);

    // return SafeArea(
    //   child: CustomScrollView(
    //     slivers: [
    //       SliverToBoxAdapter(
    //         child: SizedBox(
    //           height: 80,
    //           width: double.infinity,
    //           child: ListView.builder(
    //             scrollDirection: Axis.horizontal,
    //             itemCount: 12, //ShoesBrand.values.length,
    //             itemBuilder: (ctx, i) {
    //               return GestureDetector(
    //                 onTap: () async {
    //                   // model = ShoesBrand.values[i];
    //                   setState(() {
    //                     currentCategory = i;
    //                   });
    //                 },
    //                 child: Container(
    //                   margin: const EdgeInsets.only(
    //                     left: 10,
    //                     top: 20,
    //                     bottom: 20,
    //                   ),
    //                   padding: const EdgeInsets.symmetric(horizontal: 20),
    //                   decoration: BoxDecoration(
    //                     color:
    //                         currentCategory == i ? Colors.black : Colors.white,
    //                     borderRadius: BorderRadius.circular(20),
    //                   ),
    //                   child: Center(
    //                     child: Text(
    //                       'food',
    //                       style: TextStyle(
    //                         color: currentCategory == i
    //                             ? Colors.white
    //                             : Colors.black,
    //                         fontWeight: FontWeight.bold,
    //                         letterSpacing: 3,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               );
    //             },
    //           ),
    //         ),
    //       ),
    //       SliverPadding(
    //         padding: const EdgeInsets.symmetric(horizontal: 10),
    //         sliver: SliverGrid(
    //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //             crossAxisCount: 2,
    //             crossAxisSpacing: 8,
    //             mainAxisSpacing: 8,
    //             childAspectRatio: .8,
    //           ),
    //           delegate: SliverChildBuilderDelegate(
    //             (ctx, i) {
    //               //  return GridCard(product: list[i]);
    //             },
    //             childCount: 5, // list.length,
    //           ),
    //         ),
    //       ),
    //       const SliverToBoxAdapter(
    //         child: SizedBox(height: 100),
    //       )
    //     ],
    //   ),
    // );
  }
}
