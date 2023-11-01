import 'package:animation_ui/components/body/list_tile.dart';
import 'package:animation_ui/model/videoModel.dart';
import 'package:flutter/material.dart';

class ListViewVideos extends StatelessWidget {
  ListViewVideos({Key? key}) : super(key: key);

  final List<VideoModel> videoList = [
    VideoModel(
      name: 'Video 1',
      description: 'This is the description for Video 1',
      url:
          'https://images.unsplash.com/photo-1471107340929-a87cd0f5b5f3?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVufGVufDB8fDB8fHww',
    ),
    VideoModel(
      name: 'Video 2',
      description: 'Description for Video 2',
      url:
          'https://images.unsplash.com/photo-1460881680858-30d872d5b530?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fG1vdmllc3xlbnwwfHwwfHx8MA%3D%3D',
    ),
    VideoModel(
      name: 'Video 3',
      description: 'Description for Video 3',
      url:
          'https://images.unsplash.com/photo-1615986201152-7686a4867f30?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG1vdmillc3xlbnwwfHwwfHx8MA%3D%3D',
    ),
    VideoModel(
      name: 'Video 1',
      description: 'This is the description for Video 1',
      url:
          'https://images.unsplash.com/photo-1471107340929-a87cd0f5b5f3?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVufGVufDB8fDB8fHww',
    ),
    VideoModel(
      name: 'Video 2',
      description: 'Description for Video 2',
      url:
          'https://images.unsplash.com/photo-1460881680858-30d872d5b530?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fG1vdmllc3xlbnwwfHwwfHx8MA%3D%3D',
    ),
    VideoModel(
      name: 'Video 3',
      description: 'Description for Video 3',
      url:
          'https://images.unsplash.com/photo-1615986201152-7686a4867f30?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG1vdmillc3xlbnwwfHwwfHx8MA%3D%3D',
    ),
    VideoModel(
      name: 'Video 1',
      description: 'This is the description for Video 1',
      url:
          'https://images.unsplash.com/photo-1471107340929-a87cd0f5b5f3?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVufGVufDB8fDB8fHww',
    ),
    VideoModel(
      name: 'Video 2',
      description: 'Description for Video 2',
      url:
          'https://images.unsplash.com/photo-1460881680858-30d872d5b530?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fG1vdmllc3xlbnwwfHwwfHx8MA%3D%3D',
    ),
    VideoModel(
      name: 'Video 3',
      description: 'Description for Video 3',
      url:
          'https://images.unsplash.com/photo-1615986201152-7686a4867f30?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG1vdmillc3xlbnwwfHwwfHx8MA%3D%3D',
    ),
    // Add more VideoModel objects with real data and URLs
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 30, bottom: 20),
            child: Text(
              'Summer Recipes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: videoList.length,
              itemBuilder: (context, index) {
                return ListTileVideo(
                  title: videoList[index].name,
                  description: videoList[index].description,
                  url: videoList[index].url,
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
