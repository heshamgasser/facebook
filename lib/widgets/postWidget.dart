import 'package:flutter/material.dart';
import 'actionsWidget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                const Text(
                  'Owner',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 5),
                Row(
                  children: const [
                    Text(
                      '3h',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.public,
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'My Post',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Text(
              '100',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF3d3d3d),
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                width: 25,
                height: 25,
                child: Image.asset('assets/images/like.jpg'),
              ),
            ),
            const Expanded(
              child: Text(
                '100 Comments',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF3d3d3d),
                ),
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 1,
          color: Color(0xFF3d3d3d),
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionsWidget(
                imagePath: 'assets/images/singleLike.jpg', action: ' Like'),
            const Spacer(),
            ActionsWidget(
                imagePath: 'assets/images/comment.jpg', action: ' Comment'),
            const Spacer(),
            ActionsWidget(
              imagePath: 'assets/images/share.png',
              action: 'Share',
            ),
          ],
        ),
        const Divider(
          thickness: 1,
          color: Color(0xFF3d3d3d),
          height: 30,
        ),
      ],
    );
  }
}
