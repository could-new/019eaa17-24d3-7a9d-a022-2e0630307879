import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'niche_list_screen.dart';
import 'niche_detail_screen.dart';
import 'models.dart';

void main() {
  runApp(const NicheFinderApp());
}

class NicheFinderApp extends StatelessWidget {
  const NicheFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Поиск Ниш',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => const HomeScreen());
        }
        if (settings.name == '/niches') {
          final marketplace = settings.arguments as Marketplace;
          return MaterialPageRoute(
            builder: (context) => NicheListScreen(marketplace: marketplace),
          );
        }
        if (settings.name == '/niche_detail') {
          final niche = settings.arguments as Niche;
          return MaterialPageRoute(
            builder: (context) => NicheDetailScreen(niche: niche),
          );
        }
        return null;
      },
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
