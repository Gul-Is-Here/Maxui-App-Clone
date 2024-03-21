import 'package:flutter/material.dart';

class MyDrawerItem extends StatelessWidget {
  const MyDrawerItem({
    super.key,
    required this.title,
    required this.bgColor,
    required this.onTap,
    required this.icon, // Change type to Icons
  });

  final String title;
  final Color bgColor;
  final void Function() onTap;
  final String icon; // Change type to Icons

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        minVerticalPadding: 2,
        hoverColor: Colors.red,
        onTap: onTap,
        leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: bgColor,
            ),
            child: Image.asset(icon)),
        title: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.black26),
          ),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black38,
              )
            ],
          ),
        ),
      ),
    );
  }
}
