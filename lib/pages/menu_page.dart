import 'package:flutter/material.dart';
import 'package:flutter_app_gestion_articles/pages/accueil_pages.dart';
import 'package:flutter_app_gestion_articles/pages/ajout_article_pages.dart';
import 'package:flutter_app_gestion_articles/pages/infos_pages.dart';
import 'package:flutter_app_gestion_articles/pages/list_articles_pages.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Widget> _pages = [
    const AccueilPage(),
    const ListArticlesPages(),
    AjoutArticlePage(),
    const InfosPage(),
  ];
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[indexPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: indexPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Liste'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Ajout'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Infos'),
        ],
        onTap: (value) {
          setState(() {
            indexPage = value;
          });
        },
      ),
    );
  }
}