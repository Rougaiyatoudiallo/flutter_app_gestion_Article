import 'package:flutter/material.dart';

class ListArticlesPages extends StatefulWidget {
  const ListArticlesPages({super.key});

  @override
  State<ListArticlesPages> createState() => _ListArticlesPagesState();
}

class _ListArticlesPagesState extends State<ListArticlesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des articles'),
      ),
      body: const Center(
        child: Text('Bienvenue sur la page de la liste des articles!'),
      ),
    );
  }
}