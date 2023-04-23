import 'package:facebook/widgets/postWidget.dart';
import 'package:flutter/material.dart';

import '../widgets/actionsWidget.dart';
import '../widgets/storyWidget.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';

  List<Widget> postWidget = [
    const PostWidget(),
    const PostWidget(),
    const PostWidget(),
    const PostWidget(),
    const PostWidget(),
    const PostWidget(),
    const PostWidget(),
    const PostWidget(),
    const PostWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        title: const Text(
          'Home',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 5,
            //   child:
              Expanded(
                flex: 2,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const StoryWidget();
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        width: 5,
                        color: Colors.white,
                      );
                    },
                    itemCount: 10),
              ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 8,
              child: ListView.separated(
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return postWidget[index];
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 20);
                  },
                  itemCount: postWidget.length),
            )
          ],
        ),
      ),
    );
  }
}
