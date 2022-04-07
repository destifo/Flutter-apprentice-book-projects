import 'package:flutter/material.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/mag5.png"), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            const AuthorCard(
              author: "Mike Katz",
              title: "Smoothie Connoiseur",
              imageProvider: AssetImage("assets/author_katz.jpeg"),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  child: Text(
                    "Recipe",
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                  bottom: 16,
                  right: 16,
                ),
                Positioned(
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Smoothies",
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                  left: 16,
                  bottom: 70,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
