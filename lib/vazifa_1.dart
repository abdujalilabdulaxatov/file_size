import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count 1000'),
      ),
      body: ListView.builder(
          itemCount: 1000,
          itemBuilder: (ctx, index) {
            return Container(
              width: double.infinity,
              height: 30,
              child: Text('index: $index'),
            );
          }),
    );
  }
}
