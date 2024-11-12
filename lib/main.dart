import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('My Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileItem(
              icon: Icons.icecream,
              text: 'Ice cream is very delicious right?',
            ),
            ProfileItem(
              icon: Icons.code,
              text: 'Programming is not boring if you love it',
            ),
            ProfileItem(
              icon: Icons.egg_outlined,
              text:
              'if you submit code directly from chatgpt \nthen mark will 0',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ProfileItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFFD1C4E9),
            radius: 50,
            child: Icon(
              icon,
              color: Colors.deepPurple,
              size: 40,
            ),
          ),
          SizedBox(height: 15),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
