import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageScreen extends StatefulWidget {
  const CachedNetworkImageScreen({super.key});

  @override
  State<CachedNetworkImageScreen> createState() =>
      _CachedNetworkImageScreenState();
}

class _CachedNetworkImageScreenState extends State<CachedNetworkImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CachedImageScreen')),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          child: CachedNetworkImage(
            imageUrl:
                'https://cdn.pixabay.com/photo/2016/11/21/06/53/beautiful-natural-image-1844362_640.jpg',
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
