import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SocialLive'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                  ),
                );
              },
            ),
          ),
          // Newsfeed Section
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage('https://via.placeholder.com/150'),
                          ),
                          SizedBox(width: 10),
                          Text('Username $index'),
                        ],
                      ),
                      SizedBox(height: 8),
                      // Post Image
                      Image.network(
                        'https://via.placeholder.com/400',
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 8),

                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.comment),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}