import 'package:flutter/material.dart';

class ListTileVideo extends StatelessWidget {
  final String title;
  final String description;
  final String url;
  final int index;

  const ListTileVideo({
    super.key,
    required this.title,
    required this.description,
    required this.url,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      leading: Image.network(url),
      trailing: Text(
        index.toString(),
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
