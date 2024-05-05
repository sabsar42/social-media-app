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
          // Stories Section
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Assuming 10 stories
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    // Replace the below image with actual story images
                    backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                  ),
                );
              },
            ),
          ),
          // Newsfeed Section
          Expanded(
            child: ListView.builder(
              itemCount: 20, // Assuming 20 posts in the newsfeed
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Post Header
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,

                            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                          ),
                          SizedBox(width: 10),
                          Text('Username $index'), // Replace with actual username
                        ],
                      ),
                      SizedBox(height: 8),
                      // Post Image
                      Image.network(
                        'https://via.placeholder.com/400', // Replace with actual post image
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 8),
                      // Like, Comment, Share buttons
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {
                              // Handle like button press
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.comment),
                            onPressed: () {
                              // Handle comment button press
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {
                              // Handle share button press
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