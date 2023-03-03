import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOfferListCard extends StatelessWidget {
  final Color color;
  final String url;
  final String title;
  final num amount;
  final num lead;
  final void Function() onPressed;
  const CustomOfferListCard({
    super.key,
    required this.color,
    required this.url,
    required this.title,
    required this.amount,
    required this.lead,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(
            color: color,
            width: 2,
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              height: 73,
              width: 73,
              child: Image.network(
                url,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 76,
                          height: 29,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: const BorderSide(color: Color(0xff1185D5)),
                          ),
                          child: Text(
                            "Get ₹$amount",
                            style: const TextStyle(
                              color: Color(0xff1185D5),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child:
                                  SvgPicture.asset('assets/svg/bolt_sign.svg'),
                            ),
                            Text(
                              "$lead",
                              style: const TextStyle(
                                color: Color(0xffFF9E0C),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
