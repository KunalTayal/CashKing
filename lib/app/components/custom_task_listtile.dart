import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomTaskListtile extends StatelessWidget {
  final bool isCompleted;
  final num amount;
  final String title;
  final String description;
  CustomTaskListtile({
    super.key,
    required this.isCompleted,
    required this.amount,
    required this.title,
    required this.description,
  });
  Rx<bool> isExpanded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 8.5),
        decoration: BoxDecoration(
          color: const Color(0xffF4F4F4),
          border: isCompleted
              ? Border.all(
                  color: const Color(0xff41A31F),
                  width: 2,
                )
              : isExpanded.value
                  ? Border.all(
                      color: const Color(0xffF5970A),
                      width: 2,
                    )
                  : null,
          borderRadius: isExpanded.value
              ? BorderRadius.circular(15)
              : BorderRadius.circular(67),
        ),
        child: ExpansionTile(
          leading: CircleAvatar(
            radius: 14.5,
            backgroundColor: isCompleted
                ? const Color(0xff41A31F)
                : isExpanded.value
                    ? const Color(0xffF5970A)
                    : const Color(0xffE0E0E0),
            child: isCompleted
                ? SvgPicture.asset('assets/svg/done_icon.svg')
                : isExpanded.value
                    ? SvgPicture.asset('assets/svg/pending_icon.svg')
                    : null,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: const Color(0xff1A1A1A),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              decoration: isCompleted ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            decoration: BoxDecoration(
              color: isCompleted
                  ? const Color(0xff41A31F)
                  : isExpanded.value
                      ? const Color(0xffF5970A)
                      : Colors.white,
              borderRadius: BorderRadius.circular(67),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            child: Text(
              "₹$amount",
              style: TextStyle(
                color: isCompleted || isExpanded.value
                    ? Colors.white
                    : const Color(0xff1185D5),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          childrenPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          children: [
            Text(
              description,
              style: const TextStyle(
                color: Color(0xff9E9E9E),
                fontSize: 12,
              ),
            )
          ],
          onExpansionChanged: (value) {
            if (isExpanded.value != value) {
              print(value);
              print(isExpanded.value);
              isExpanded.value = value;
              print(value);
              print(isExpanded.value);
            }
          },
        ),
      );
    });
  }
}
