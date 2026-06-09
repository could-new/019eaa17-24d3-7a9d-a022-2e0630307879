import 'package:flutter/material.dart';
import 'models.dart';

class NicheListScreen extends StatefulWidget {
  final Marketplace marketplace;

  const NicheListScreen({super.key, required this.marketplace});

  @override
  State<NicheListScreen> createState() => _NicheListScreenState();
}

class _NicheListScreenState extends State<NicheListScreen> {
  late List<Niche> niches;
  String searchQuery = '';
  String selectedCategory = 'Все';

  @override
  void initState() {
    super.initState();
    niches = widget.marketplace == Marketplace.wildberries
        ? mockWildberriesNiches
        : mockOzonNiches;
  }

  List<Niche> get filteredNiches {
    return niches.where((niche) {
      final matchesQuery = niche.title.toLowerCase().contains(searchQuery.toLowerCase());
      final matchesCategory = selectedCategory == 'Все' || niche.category == selectedCategory;
      return matchesQuery && matchesCategory;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final categories = ['Все', ...niches.map((n) => n.category).toSet()];

    return Scaffold(
      appBar: AppBar(
        title: Text('Ниши на ${widget.marketplace == Marketplace.wildberries ? "Wildberries" : "Ozon"}'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Поиск ниши...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: categories.map((category) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FilterChip(
                    label: Text(category),
                    selected: selectedCategory == category,
                    onSelected: (selected) {
                      setState(() {
                        selectedCategory = category;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: filteredNiches.length,
              itemBuilder: (context, index) {
                final niche = filteredNiches[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    title: Text(niche.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Выручка: ${niche.monthlyRevenue} ₽\nКонкурентов: ${niche.sellersCount}'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    isThreeLine: true,
                    onTap: () {
                      Navigator.pushNamed(context, '/niche_detail', arguments: niche);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
