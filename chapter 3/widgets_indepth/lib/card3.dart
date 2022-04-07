import 'package:flutter/material.dart';
import 'package:widgets_indepth/fooderlich_theme.dart';
import 'package:widgets_indepth/main.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        //padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Recipe Cards",
                      style: FooderlichTheme.darkTextTheme.headline2),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children: [
                  Chip(
                    label: Text(
                      "Healthy",
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print("Deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Vegan",
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print("Deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Carrots",
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print("Deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Greens",
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print("Deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Wheat",
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print("Deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Pesctarian",
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print("Deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "Mint",
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print("Deleted");
                    },
                  ),
                  Chip(
                    label: Text(
                      "LemonGrass",
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print("Deleted");
                    },
                  )
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
                image: AssetImage("assets/mag2.png"), fit: BoxFit.cover)),
      ),
    );
  }
}
