import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:openapi/openapi.dart';

import '../../const/const.dart';
import '../bloc/home_bloc/home_screen_bloc.dart';
import '../widgets/side_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<HomeScreenBloc>(context).add(AllCategoryListEvent());
    super.initState();
  }

  int currentSelected = 0;
  //List categoryList = ["veg", "non veg", "drinks", "sweets", "candy"];
  List<CategoryDTO> categoryList = [];
  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<HomeScreenBloc>(context).add(AllCategoryListEvent());

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: () {
        //     sideDrawer(context);
        //   },
        //   icon: const Icon(Icons.menu),
        // ),
        backgroundColor: kGreen,
        title: const Text('Hungry Zone'),
      ),
      drawer: sideDrawer(context), // your drawer
      body: _body(context),
    );
  }

  ListView _body(BuildContext context) {
    return ListView(physics: const BouncingScrollPhysics(), children: [
      Column(
        children: [
          catgoryStatusList(context)
              .animate()
              .fadeIn(delay: 300.ms, duration: 500.ms),
          //.then()
          //.slide(duration: 400.ms),
          Column(
            children: [
              SizedBox(
                height: 30,
                child: Row(
                  children: const [
                    Text(
                      'Fresh recommendations',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
              itemsGrid(),
            ],
          )
        ],
      ),
    ]);
  }

//  grid view for FOOD
  Widget itemsGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 31,
      itemBuilder: ((context, index) => InkWell(
            child: const Card(
              color: Color.fromARGB(255, 218, 218, 218),
            ),
            onTap: () {},
          )),
    );
  }

  Container catgoryStatusList(BuildContext context) {
    //  BlocProvider.of<HomeScreenBloc>(context).add(AllCategoryListEvent());
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 5.5,
      child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
          builder: (context, state) {
        if (state is AllCategoryLoaded) {
          categoryList = state.allCateList!;

          return Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: categoryList.isEmpty ? 5 : categoryList.length,
                itemBuilder: (ctx, cateIndex) {
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          // WidgetsBinding.instance.addPostFrameCallback(){currentSelected = cateIndex;};
                          //
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
                                    ? Color.fromARGB(255, 58, 57, 57)
                                    : Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: const AssetImage(
                                      'assets/images/logo.jpg'),
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
                              child: Text(categoryList.isNotEmpty
                                  ? categoryList.first.name
                                  : 'category'),
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
                              categoryList.isNotEmpty
                                  ? categoryList.first.name
                                  : 'category',
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
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
        //
      }),
    );
  }
}
