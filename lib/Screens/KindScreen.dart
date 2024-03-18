import 'package:flutter/material.dart';
import 'package:m_a_foods/Data/Lists.dart';
import '../Data/Classes.dart';
import '../Models/Function.dart';

class KindPage extends StatefulWidget {
  Drink drink;

  KindPage(this.drink, {super.key});

  @override
  State<KindPage> createState() => _KindPageState(this.drink);
}

class _KindPageState extends State<KindPage> {
  int Counter = 0;
  Drink drink;

  _KindPageState(this.drink);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ABar(con: context),
      body: Container(
        color: Colors.white10,
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 280,
              height: 280,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(drink.Image!),
                ),
                color: Colors.green,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(
                        5,
                        10,
                      ),
                      blurRadius: 100,
                      blurStyle: BlurStyle.inner)
                ],
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Con2(child: txt(Fonts: 50, data: drink.Name)),
            Con2(child: txt(Fonts: 20, data: 'Kind')),
            txt(data: drink.Kind, Fonts: 30, c: Colors.cyan),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  txt(data: '${drink.Price!} Egp', Fonts: 30),
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {
                              print('remove');
                              setState(() {
                                Counter -= 1;
                                if (Counter == -1) {
                                  Counter = 0;
                                }
                              });
                            },
                            child: Con(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                                radius: 50,
                                height: 50,
                                width: 50)),
                        txt(Fonts: 25, data: '$Counter', c: Colors.black),
                        InkWell(
                            onTap: () {
                              print('add');
                              setState(() {
                                Counter += 1;
                              });
                            },
                            child: Con(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                                radius: 50,
                                height: 50,
                                width: 50)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  print('buy');
                  if (Counter != 0) {
                    cartd.add(Drink(
                        Name: drink.Name,
                        Image: drink.Image,
                        Price: drink.Price,
                        count: Counter));
                  }
                },
                child: Con(
                    child: txt(data: 'Buy Now', Fonts: 25, c: Colors.white),
                    height: 70,
                    width: 300,
                    radius: 25)),
          ],
        ),
      ),
    );
  }
}
