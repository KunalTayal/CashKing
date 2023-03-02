import 'package:flutter/material.dart';

class CustomTrendingOfferCard extends StatelessWidget {
  final Color color;
  final String url;
  final String title;
  final num amount;
  final num lead;
  const CustomTrendingOfferCard(
      {super.key,
      required this.color,
      required this.url,
      required this.title,
      required this.amount,
      required this.lead});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 181,
      height: 205,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(
        children: const [],
      ),
    );
  }
}
