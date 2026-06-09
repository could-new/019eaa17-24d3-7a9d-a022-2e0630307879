import 'package:flutter/material.dart';
import 'models.dart';

class NicheDetailScreen extends StatelessWidget {
  final Niche niche;

  const NicheDetailScreen({super.key, required this.niche});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(niche.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Аналитика по нише: ${niche.title}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Chip(label: Text(niche.category)),
            const SizedBox(height: 24),
            _buildStatCard('Общая выручка', '${niche.monthlyRevenue} ₽', Icons.monetization_on, Colors.green),
            const SizedBox(height: 16),
            _buildStatCard('Средний чек', '${niche.averagePrice} ₽', Icons.receipt, Colors.blue),
            const SizedBox(height: 16),
            _buildStatCard('Количество продавцов', '${niche.sellersCount}', Icons.storefront, Colors.orange),
            const SizedBox(height: 16),
            _buildStatCard('Уровень конкуренции', '${(niche.competitionLevel * 100).toStringAsFixed(0)}%', Icons.trending_up, Colors.purple),
            const SizedBox(height: 24),
            const Text(
              'Рекомендации',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              niche.competitionLevel < 0.6 
                ? 'Низкая или умеренная конкуренция, хороший потенциал для входа.'
                : 'Высокая конкуренция. Потребуется больший бюджет на рекламу и продвижение.',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        title: Text(title, style: const TextStyle(color: Colors.grey)),
        subtitle: Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
      ),
    );
  }
}
