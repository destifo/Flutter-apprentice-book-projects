import 'package:flutter/material.dart';
import 'package:widgets_indepth/circular_image.dart';
import 'package:widgets_indepth/fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String author;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard(
      {Key? key, required this.author, required this.title, this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    author,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  )
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              const snackBar = SnackBar(content: Text("Favorite Pressed"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
          )
        ],
      ),
    );
  }
}
