import 'package:flutter/material.dart';
import 'package:m_a_foods/Data/Lists.dart';
import 'package:m_a_foods/Screens/KindScreen.dart';
import 'Function.dart';

class DrinkPage extends StatefulWidget {
  @override
  State<DrinkPage> createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
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
              title: txt(data: 'Drink Menu', Fonts: 25),
              backgroundColor: Colors.red[400],
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.coffee),
                  text: 'Hot Drink',
                ),
                Tab(
                  icon: Icon(Icons.local_drink),
                  text: 'Cold Drink',
                ),
              ]),
            ),
            body: TabBarView(children: [
              ListView(
                children: [
                  for (int i = 0; i < HDL.length; i += 2)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (b) {
                                return KindPage(HDL[f = i]);
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
                                      image: AssetImage(HDL[f = i].Image!),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Con3(
                                    child:
                                        txt(Fonts: 22, data: HDL[f = i].Name!)),
                                txt(
                                    data: '${HDL[f = i].Price!} Egp',
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
                                return KindPage(HDL[f = i + 1]);
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
                                      image: AssetImage(HDL[f = i + 1].Image!),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Con3(
                                    child: txt(
                                        Fonts: 22, data: HDL[f = i + 1].Name!)),
                                txt(
                                    data: '${HDL[f = i + 1].Price!} Egp',
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
                  for (int i = 0; i < CDL.length; i += 2)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (b) {
                                return KindPage(CDL[f = i]);
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
                                      image: AssetImage(CDL[f = i].Image!),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Con3(
                                    child:
                                        txt(Fonts: 22, data: CDL[f = i].Name!)),
                                txt(
                                    data: '${CDL[f = i].Price!} Egp',
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
                                return KindPage(CDL[f = i + 1]);
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
                                      image: AssetImage(CDL[f = i + 1].Image!),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Con3(
                                    child: txt(
                                        Fonts: 22, data: CDL[f = i + 1].Name!)),
                                txt(
                                    data: '${CDL[f = i + 1].Price!} Egp',
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
