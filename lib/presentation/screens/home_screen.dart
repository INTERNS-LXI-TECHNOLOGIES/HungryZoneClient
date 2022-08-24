import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungryzone/database/model/operations.dart';
import 'package:hungryzone/presentation/bloc/home_bloc/home_screen_bloc.dart';
import 'package:hungryzone/presentation/screens/profile_screen.dart';
import 'package:openapi/openapi.dart';

import '../../const/const.dart';
import '../widgets/side_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSelected = 0;
  List categoryList = ["veg", "non veg", "drinks", "sweets", "candy"];

  @override
  Widget build(BuildContext context) {
    getAllUser();
    return Scaffold(
      drawer: sideDrawer(context),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu_outlined),
        //   onPressed: () {
        //     drawerWidget();
        //   },
        // ),
        backgroundColor: kGreen,
        title: const Text('Hungry Zone'),
      ),
      //drawer:,

      body: SingleChildScrollView(
        child: Column(
          children: [
            catgoryStatusList(context),
            SizedBox(
              height: 45,
              child: Row(
                children: const [
                  Text(
                    'Special Offers',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              color: Color.fromARGB(255, 255, 215, 97),
              child: const Center(
                child: Text('food'),
              ),
            ),
            SizedBox(
              height: 45,
              child: Row(
                children: const [
                  Text(
                    'Bestsellers',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              color: Color.fromARGB(255, 94, 182, 254),
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 11,
                  itemBuilder: ((context, index) => Card(
                        color: Color.fromARGB(255, 3, 96, 172),
                      ))),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottombarWidgets(),
    );
  }

  CurvedDrawer drawerWidget() {
    return CurvedDrawer(
      color: Colors.white,
      labelColor: Colors.black54,
      width: 100,
      items: const <DrawerItem>[
        DrawerItem(icon: Icon(Icons.shopping_bag)),
        //Optional Label Text
        DrawerItem(icon: Icon(Icons.shopping_bag)),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }

  Container catgoryStatusList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 5.5,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categoryList.length,
        itemBuilder: (ctx, cateIndex) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = cateIndex;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                        color: currentSelected == cateIndex
                            ? Colors.black
                            : Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: const AssetImage('assets/images/logo.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            currentSelected == cateIndex
                                ? Colors.black.withOpacity(.5)
                                : Colors.black.withOpacity(.85),
                            BlendMode.darken,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text("category"),
                      // SvgPicture.asset(
                      //   categoryList[i].icon,
                      //   height: 24,
                      //   width: 24,
                      //   color:
                      //       currentSelected == i ? Colors.white : Colors.grey,
                      // ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Category",
                      style: TextStyle(
                        fontWeight: currentSelected == cateIndex
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
