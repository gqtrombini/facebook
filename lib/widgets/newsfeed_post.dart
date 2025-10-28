import 'package:flutter/material.dart';

class NewsFeedPost extends StatelessWidget {
  const NewsFeedPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://example.com/prof3.jpg'),
                ),
                title: RichText(
                  text: TextSpan(
                    text: 'John Doe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black,),

                    children: [
                      TextSpan(mouseCursor: SystemMouseCursors.click,
                        text: ' follow',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ]
                  ),
                ),
                subtitle: Text('followers'),
                trailing: Icon(Icons.more_horiz),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text("This is a sample caption for the post."),
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage("assets/myday/myday1.jpg"))),
              ),
              ListTile(
                leading: Icon(Icons.thumb_up_alt_outlined),
                title: Icon(Icons.comment_outlined),
                trailing: Icon(Icons.share_outlined),
              )
            ],
          ),
        ),
      ],
    );
  }
}