import 'package:flutter/material.dart';
import 'package:newsapp/src/models/news_models.dart';

class ListaNoticias extends StatelessWidget {
  final List<Article> noticias;
  ListaNoticias(this.noticias);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.noticias.length,
      itemBuilder: (BuildContext context, index) {
        return Text(noticias[index].title!);
      },
    );
  }
}
