import 'package:flutter/material.dart';

class AjoutArticlePage extends StatefulWidget {
  State<AjoutArticlePage> createState() => _AjoutArticlePageState();
}

class _AjoutArticlePageState extends State<AjoutArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajout d\'un article'),
      ),
      body: const Center(
        child: Text('Page d\'ajout d\'un article!'),
      ),
    );
  }
}