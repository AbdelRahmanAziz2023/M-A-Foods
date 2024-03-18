import 'package:flutter/material.dart';
import 'package:m_a_foods/Data/Lists.dart';
import '../Screens/RecipeScreen.dart';
import 'Function.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({ Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int? f;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  print('back');
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
              centerTitle: true,
              title: txt(data: 'Food Menu', Fonts: 25),
              backgroundColor: Colors.red[400],
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.fastfood),
                  text: 'Fast Food',
                ),
                Tab(
                  icon: Icon(Icons.food_bank),
                  text: 'Healthy Food',
                ),
              ]),
            ),
            body: TabBarView(children: [
              ListView(
                children: [
                  for (int i = 0; i < FFL.length; i += 2)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (b) {
                                return RecipePage(FFL[f = i]);
                              }),
                            );
                          },
                          child: Container(
                            width: 175,
                            height: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 2),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.white10,
                                  offset: Offset(
                                    1,
                                    1,
                                  ),
                                  blurRadius: 200,
                                )
                              ],
                            ),
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(FFL[f = i].Image!),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Con3(
                                    child:
                                        txt(Fonts: 22, data: FFL[f = i].Name)),
                                txt(
                                    data: '${FFL[f = i].Price!} Egp',
                                    Fonts: 25,
                                    c: Colors.cyan),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (b) {
                                return RecipePage(FFL[f = i + 1]);
                              }),
                            );
                          },
                          child: Container(
                            width: 175,
                            height: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 2),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.white10,
                                  offset: Offset(
                                    1,
                                    1,
                                  ),
                                  blurRadius: 200,
                                )
                              ],
                            ),
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(FFL[f = i + 1].Image!),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Con3(
                                    child: txt(
                                        Fonts: 22, data: FFL[f = i + 1].Name)),
                                txt(
                                    data: '${FFL[f = i + 1].Price} Egp',
                                    Fonts: 25,
                                    c: Colors.cyan),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                ],
              ),
              ListView(
                children: [
                  for (int i = 0; i < HFL.length; i += 2)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (b) {
                                return RecipePage(HFL[f = i]);
                              }),
                            );
                          },
                          child: Container(
                            width: 175,
                            height: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 2),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.white10,
                                  offset: Offset(
                                    1,
                                    1,
                                  ),
                                  blurRadius: 200,
                                )
                              ],
                            ),
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(HFL[f = i].Image!),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Con3(
                                    child:
                                        txt(Fonts: 22, data: HFL[f = i].Name)),
                                txt(
                                    data: '${HFL[f = i].Price} Egp',
                                    Fonts: 25,
                                    c: Colors.cyan),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (b) {
                                return RecipePage(HFL[f = i + 1]);
                              }),
                            );
                          },
                          child: Container(
                            width: 175,
                            height: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 2),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.white10,
                                  offset: Offset(
                                    1,
                                    1,
                                  ),
                                  blurRadius: 200,
                                )
                              ],
                            ),
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(HFL[f = i + 1].Image!),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Con3(
                                    child: txt(
                                        Fonts: 22, data: HFL[f = i + 1].Name)),
                                txt(
                                    data: '${HFL[f = i + 1].Price} Egp',
                                    Fonts: 25,
                                    c: Colors.cyan),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                ],
              ),
            ])));
  }
}
