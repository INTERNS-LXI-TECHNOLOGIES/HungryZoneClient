import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungryzone/database/model/operations.dart';
import 'package:hungryzone/presentation/bloc/home_bloc/home_screen_bloc.dart';
import 'package:hungryzone/presentation/screens/add_food_screen.dart';
import 'package:hungryzone/presentation/screens/profile_screen.dart';
import 'package:openapi/openapi.dart';

import '../../const/const.dart';
import '../widgets/bottom_navigator.dart';
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
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu_outlined),
        //   onPressed: () {
        //     drawerWidget();
        //   },
        // ),
        backgroundColor: kGreen,
        title: const Text('Hungry Zone'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            catgoryStatusList(context),
            SizedBox(
              height: 45,
              child: Row(
                children: const [
                  Text(
                    'Fresh recommendations',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              color: Color.fromARGB(255, 249, 251, 252),
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 11,
                  itemBuilder: ((context, index) =>
                      Card(color: Color.fromARGB(255, 218, 218, 218)))),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: BottombarWidgets(),

      floatingActionButton: FloatingActionButton(
        backgroundColor: kGreen,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AddFoodScreen()),
          );
        },
      ),
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
