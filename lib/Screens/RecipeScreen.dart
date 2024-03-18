import 'package:flutter/material.dart';
import 'package:m_a_foods/Data/Lists.dart';
import 'package:m_a_foods/Models/Function.dart';
import '../Data/Classes.dart';

class RecipePage extends StatefulWidget {
  Food food;

  RecipePage(this.food, {super.key});

  @override
  State<RecipePage> createState() => _RecipePageState(this.food);
}

class _RecipePageState extends State<RecipePage> {
  int Counter = 0;
  Food food;

  _RecipePageState(this.food);

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
                  image: AssetImage(food.Image!),
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
            Con2(child: txt(Fonts: 30, data: food.Name)),
            Con2(child: txt(Fonts: 20, data: 'Details')),
            txt(data: food.Recipe, Fonts: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                txt(data: '${food.Price!} Egp', Fonts: 30),
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
            InkWell(
                onTap: () {
                  print('buy');
                  if (Counter != 0) {
                    cartf.add(Food(
                        Name: food.Name,
                        Image: food.Image,
                        Price: food.Price,
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
