import 'package:flutter/material.dart';

void main() {
  runApp(MyListView());
}

class MyListView extends StatelessWidget {
  List<String> post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6',
  ];
  List<String> story = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: 150,
              child: Expanded(
                child: ListView.builder(
                  itemCount: story.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ReusableStory(
                      storyText: story[index],
                    );
                  },
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: post.length,
              itemBuilder: (context, index) {
                return ReusablePost(
                  postText: post[index],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

class ReusableStory extends StatelessWidget {
  final String storyText;

  ReusableStory({required this.storyText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.pink,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            storyText,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

class ReusablePost extends StatelessWidget {
  final String postText;

  ReusablePost({required this.postText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 200,
        color: Colors.deepPurple,
        child: Center(
          child: Text(
            postText,
            style: TextStyle(
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
