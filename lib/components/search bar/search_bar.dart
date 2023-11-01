import 'package:animation_ui/components/search%20bar/show_search_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTopBar extends StatefulWidget {
  const SearchTopBar({Key? key}) : super(key: key);

  @override
  State<SearchTopBar> createState() => _SearchTopBarState();
}

var currentHeight = 50.h;
bool _showSearchDetails = false;
bool _animationInProgress = false;

class _SearchTopBarState extends State<SearchTopBar> {
  void _toggleHeight() async {
    if (_animationInProgress) {
      return;
    }

    _animationInProgress = true;
    bool flag = false;

    setState(() {
      if (currentHeight > 50.h) {
        flag = false;
      } else {
        currentHeight = MediaQuery.of(context).size.height - 30.h;
        flag = true;
      }
    });

    await Future.delayed(const Duration(milliseconds: 300));

    setState(() {
      if (flag) {
        _showSearchDetails = true;
      } else {
        _showSearchDetails = false;
        currentHeight = 50.h;
      }
      _animationInProgress = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
      color: Colors.white,
      height: currentHeight,
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  (_showSearchDetails) ? Icons.arrow_back : Icons.search,
                ),
                color: Colors.black,
                onPressed: () => _toggleHeight(),
              ),
              const Icon(Icons.mic),
            ],
          ),
          (_showSearchDetails) ? ShowSearchDetails() : Container(),
        ],
      ),
    );
  }
}
