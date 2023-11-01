import 'package:animation_ui/components/search%20bar/search_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowSearchDetails extends StatelessWidget {
  const ShowSearchDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Left-align the children
        children: [
          const Text(
            'Yesterday',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.h),
          const SearchTile(
            icon: Icons.watch_later_outlined,
            heading: '481 Van Brunt Street',
            subHeading: 'Brooklyn, NY',
          ),
          SizedBox(
            height: 20.h,
          ),
          const SearchTile(
            icon: Icons.home,
            heading: 'Home',
            subHeading: '199 Pacific Street, Brooklyn, NY',
          ),
          SizedBox(
            height: 60.h,
          ),

          // Add here
          const Text(
            'THIS WEEK',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const SearchTile(
            icon: Icons.watch_later_outlined,
            heading: 'BEP GA',
            subHeading: 'Forsyth Street, New York, NY',
          ),
          SizedBox(
            height: 20.h,
          ),
          const SearchTile(
            icon: Icons.watch_later_outlined,
            heading: 'Sushi Nakazawa',
            subHeading: 'Commerce Street, New York, NY',
          ),
          SizedBox(
            height: 20.h,
          ),
          const SearchTile(
            icon: Icons.watch_later_outlined,
            heading: 'IFC Center',
            subHeading: '6th Avenue, New York, ',
          ),
          SizedBox(
            height: 30.h,
          ),
          const Row(
            children: [
              Icon(Icons.arrow_forward),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'View more',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
