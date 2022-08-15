import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:flutter/material.dart';
import 'package:hungryzone/database/model/operations.dart';

import '../../const/const.dart';

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
      drawer: CurvedDrawer(
        color: Colors.white,
        labelColor: Colors.black54,
        width: 75.0,
        items: const <DrawerItem>[
          DrawerItem(icon: Icon(Icons.shopping_bag)),
          //Optional Label Text
          DrawerItem(icon: Icon(Icons.shopping_bag)),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.menu_outlined),
          onPressed: () {},
        ),
        backgroundColor: kGreen,
        title: const Text('Food ResQ'),
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
              height: 150,
              color: Color.fromARGB(255, 255, 215, 97),
              child: const Center(
                child: Text('food'),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottombarWidgets(),
    );
  }

  Container catgoryStatusList(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 5.5,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categoryList.length,
        itemBuilder: (ctx, i) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = i;
                  });
                },
                child: Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          color:
                              currentSelected == i ? Colors.black : Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/logo.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              currentSelected == i
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
                          fontWeight: currentSelected == i
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
