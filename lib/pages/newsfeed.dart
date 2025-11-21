import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/createpost.dart';
import 'package:facebook/widgets/storylist.dart';
import 'package:flutter/material.dart';

class Newsfeed extends StatefulWidget {
const Newsfeed({super.key});

@override
State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {

List<StoryModel> stories =
[
StoryModel(id: '1', username: 'Juan', profileImagePath: 'assets/profile/prof1.jpg', storyImagePath: 'assets/myday/myday1.jpg', timestamp: DateTime.now().subtract(const Duration (hours: 5)),
isViewed: false),

StoryModel(id: '2', username: 'Steve', profileImagePath: 'assets/profile/prof2.jpg', storyImagePath: 'assets/myday/myday2.jpg', timestamp: DateTime.now().subtract(const Duration (hours: 24)),
isViewed: false),

StoryModel(id: '3', username: 'Hock', profileImagePath: 'assets/profile/prof3.jpg', storyImagePath: 'assets/myday/myday4.jpg', timestamp: DateTime.now().subtract(const Duration (hours: 15)),
isViewed: false),

StoryModel(id: '4', username: 'Damian', profileImagePath: 'assets/profile/prof4.jpg', storyImagePath: 'assets/myday/try.png', timestamp: DateTime.now().subtract(const Duration (hours: 12)),
isViewed: false),

StoryModel(id: '5', username: 'Devin', profileImagePath: 'assets/profile/prof5.jpg', storyImagePath: 'assets/myday/myday5.jpg', timestamp: DateTime.now().subtract(const Duration (hours: 14)),
isViewed: false)
];

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
appBar: AppBar(
backgroundColor: Colors.white,
title: Image.asset(
'assets/icon/logo.png',
height: 80,
),
actions: [
IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
const DrawerButton(),
],
),
body: SingleChildScrollView(
child: Column(children: [
const Createpost(),
StoriesList(
stories: stories,
onStoryTap: (story) {},
),

Card(
margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
ListTile(
leading: CircleAvatar(backgroundImage: AssetImage('assets/profile/prof1.jpg')),
title: Text("Jaena Smith"),
subtitle: Text("Enjoying the sunny weather!"),
),
Image.asset("assets/myday/myday1.jpg", fit: BoxFit.cover),
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(children: [Icon(Icons.thumb_up_off_alt), SizedBox(width: 8), Text("Like  ·  Comment")]),
),
],
),
),

Card(
margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
ListTile(
leading: CircleAvatar(backgroundImage: AssetImage('assets/profile/prof2.jpg')),
title: Text("Steve Rogers"),
subtitle: Text("Just finished a great workout."),
),
Image.asset("assets/myday/myday2.jpg", fit: BoxFit.cover),
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(children: [Icon(Icons.thumb_up_off_alt), SizedBox(width: 8), Text("Like  ·  Comment")]),
),
],
),
),

Card(
margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
ListTile(
leading: CircleAvatar(backgroundImage: AssetImage('assets/profile/prof3.jpg')),
title: Text("Sarah Lee"),
subtitle: Text("Delicious meal at my favorite restaurant."),
),
Image.asset("assets/myday/myday1.jpg", fit: BoxFit.cover),
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(children: [Icon(Icons.thumb_up_off_alt), SizedBox(width: 8), Text("Like  ·  Comment")]),
),
],
),
),

Card(
margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
ListTile(
leading: CircleAvatar(backgroundImage: AssetImage('assets/profile/prof4.jpg')),
title: Text("Damian Lillard"),
subtitle: Text("Exploring the city vibes."),
),
Image.asset("assets/myday/myday4.jpg", fit: BoxFit.cover),
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(children: [Icon(Icons.thumb_up_off_alt), SizedBox(width: 8), Text("Like  ·  Comment")]),
),
],
),
),

Card(
margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
ListTile(
leading: CircleAvatar(backgroundImage: AssetImage('assets/profile/prof5.jpg')),
title: Text("Devin Booker"),
subtitle: Text("Sunset views are the best."),
),
Image.asset("assets/myday/myday5.jpg", fit: BoxFit.cover),
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(children: [Icon(Icons.thumb_up_off_alt), SizedBox(width: 8), Text("Like  ·  Comment")]),
),
],
),
),

],),
),
);
}
}