import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 104, 43, 115),
      appBar: AppBar(
        title: Text('Mobile View'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.deepPurple),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.deepPurple,
                          height: 100,
                        ),
                      ],
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
