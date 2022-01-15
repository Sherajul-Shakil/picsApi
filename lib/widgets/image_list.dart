import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  // ignore: use_key_in_widget_constructors
  const ImageList(this.images);

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          margin: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                child: Text(
                  images[index].title,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        );

        //Text(images[index].url);
      },
    );
  }
}
