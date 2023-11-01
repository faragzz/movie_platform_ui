import 'package:animation_ui/components/body/list_view.dart';
import 'package:animation_ui/components/search%20bar/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 60.h,
              left: 0,
              right: 0,
              bottom: 0,
              child: ListViewVideos(),
            ),
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SearchTopBar(),
            ),
          ],
        ),
      ),
    );
  }
}
