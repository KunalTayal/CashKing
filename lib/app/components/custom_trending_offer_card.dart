import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        children: [
          SizedBox(
            height: 127,
            child: Image.network(
              url,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 12),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 12),
            child: Text(
              "Get Rs. $amount",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                SvgPicture.asset('assets/svg/bolt_sign.svg'),
                const SizedBox(width: 7),
                Text(
                  "$lead users",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
