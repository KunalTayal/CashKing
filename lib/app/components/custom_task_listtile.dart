import 'package:flutter/material.dart';

class CustomTaskListtile extends StatelessWidget {
  final bool isCompleted;
  final num amount;
  final String title;
  final String description;
  const CustomTaskListtile(
      {super.key,
      required this.isCompleted,
      required this.amount,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF4F4F4),
        borderRadius: BorderRadius.circular(67),
      ),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xffE0E0E0),
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                decoration: isCompleted ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF4F4F4),
                borderRadius: BorderRadius.circular(67),
              ),
              child: Text(
                "₹$amount",
                style: const TextStyle(
                  color: Color(0xff1185D5),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          if (description != "")
            Text(
              description,
              style: const TextStyle(fontSize: 12),
            )
        ],
      ),
    );
  }
}
