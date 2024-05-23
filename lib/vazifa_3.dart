import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ImageScreen());
}

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Loading')),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Image.network(
            "https://3.hdqwalls.com/wallpapers/skye-united-kingdom-8k-yh.jpg",
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1)
                      : null,
                ),
              );
            },
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return Center(child: Icon(Icons.error));
            },
          );
        },
      ),
    );
  }
}
