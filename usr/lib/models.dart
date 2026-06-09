enum Marketplace { wildberries, ozon }

class Niche {
  final String id;
  final String title;
  final String category;
  final double averagePrice;
  final double monthlyRevenue;
  final int sellersCount;
  final double competitionLevel; // 0.0 to 1.0

  Niche({
    required this.id,
    required this.title,
    required this.category,
    required this.averagePrice,
    required this.monthlyRevenue,
    required this.sellersCount,
    required this.competitionLevel,
  });
}

final List<Niche> mockWildberriesNiches = [
  Niche(id: '1', title: 'Платья летние', category: 'Одежда', averagePrice: 2500, monthlyRevenue: 15000000, sellersCount: 1200, competitionLevel: 0.9),
  Niche(id: '2', title: 'Наушники беспроводные', category: 'Электроника', averagePrice: 1500, monthlyRevenue: 8000000, sellersCount: 500, competitionLevel: 0.7),
];

final List<Niche> mockOzonNiches = [
  Niche(id: '3', title: 'Кофемашины', category: 'Бытовая техника', averagePrice: 15000, monthlyRevenue: 5000000, sellersCount: 150, competitionLevel: 0.4),
  Niche(id: '4', title: 'Книги по психологии', category: 'Книги', averagePrice: 800, monthlyRevenue: 2000000, sellersCount: 300, competitionLevel: 0.5),
];
