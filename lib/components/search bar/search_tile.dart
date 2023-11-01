import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTile extends StatelessWidget {
  final IconData icon;
  final String heading;
  final String subHeading;
  const SearchTile(
      {super.key,
      required this.icon,
      required this.heading,
      required this.subHeading});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 32,
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(subHeading),
          ],
        )
      ],
    );
  }
}
