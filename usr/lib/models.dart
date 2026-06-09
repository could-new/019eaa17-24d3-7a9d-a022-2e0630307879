class NicheData {
  final String id;
  final String title;
  final String category;
  final int averageRevenue;
  final int averagePrice;
  final int competitors;
  final double growthTrend; // Процент роста (положительный или отрицательный)
  final String marketplace; // 'Wildberries' или 'Ozon'

  NicheData({
    required this.id,
    required this.title,
    required this.category,
    required this.averageRevenue,
    required this.averagePrice,
    required this.competitors,
    required this.growthTrend,
    required this.marketplace,
  });
}

// Моковые данные для Wildberries
final List<NicheData> wildberriesData = [
  NicheData(
    id: 'wb1',
    title: 'Беспроводные наушники',
    category: 'Электроника',
    averageRevenue: 1500000,
    averagePrice: 1500,
    competitors: 3400,
    growthTrend: 12.5,
    marketplace: 'Wildberries',
  ),
  NicheData(
    id: 'wb2',
    title: 'Коврик для йоги',
    category: 'Спорт',
    averageRevenue: 500000,
    averagePrice: 800,
    competitors: 1200,
    growthTrend: 5.0,
    marketplace: 'Wildberries',
  ),
  NicheData(
    id: 'wb3',
    title: 'Сумка женская кожаная',
    category: 'Аксессуары',
    averageRevenue: 2000000,
    averagePrice: 3500,
    competitors: 5600,
    growthTrend: -2.3,
    marketplace: 'Wildberries',
  ),
  NicheData(
    id: 'wb4',
    title: 'Умная колонка',
    category: 'Электроника',
    averageRevenue: 3000000,
    averagePrice: 4000,
    competitors: 800,
    growthTrend: 25.0,
    marketplace: 'Wildberries',
  ),
  NicheData(
    id: 'wb5',
    title: 'Набор кухонных ножей',
    category: 'Дом',
    averageRevenue: 800000,
    averagePrice: 2000,
    competitors: 2100,
    growthTrend: 8.4,
    marketplace: 'Wildberries',
  ),
];

// Моковые данные для Ozon
final List<NicheData> ozonData = [
  NicheData(
    id: 'oz1',
    title: 'Робот-пылесос',
    category: 'Бытовая техника',
    averageRevenue: 4500000,
    averagePrice: 12000,
    competitors: 950,
    growthTrend: 18.2,
    marketplace: 'Ozon',
  ),
  NicheData(
    id: 'oz2',
    title: 'Эспандер трубчатый',
    category: 'Спорт',
    averageRevenue: 300000,
    averagePrice: 500,
    competitors: 1500,
    growthTrend: 2.1,
    marketplace: 'Ozon',
  ),
  NicheData(
    id: 'oz3',
    title: 'Крем для лица увлажняющий',
    category: 'Красота',
    averageRevenue: 1200000,
    averagePrice: 900,
    competitors: 4200,
    growthTrend: 9.7,
    marketplace: 'Ozon',
  ),
  NicheData(
    id: 'oz4',
    title: 'Постельное белье 2-спальное',
    category: 'Дом',
    averageRevenue: 2500000,
    averagePrice: 2800,
    competitors: 3800,
    growthTrend: -1.5,
    marketplace: 'Ozon',
  ),
  NicheData(
    id: 'oz5',
    title: 'Видеорегистратор',
    category: 'Автотовары',
    averageRevenue: 1800000,
    averagePrice: 4500,
    competitors: 1100,
    growthTrend: 14.3,
    marketplace: 'Ozon',
  ),
];
