import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit Scraper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RedditScraperPage(),
    );
  }
}

class RedditScraperPage extends StatefulWidget {
  @override
  _RedditScraperPageState createState() => _RedditScraperPageState();
}

class _RedditScraperPageState extends State<RedditScraperPage> {
  List<dynamic> posts = [];

  Timer? timer;

  Future<void> fetchPosts() async {
    final response = await http.get(
      // set subreddit name here
      Uri.parse('https://www.reddit.com/r/LeagueOfDerp.json'),
      headers: {'User-Agent': 'Mozilla/5.0'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> children = data['data']['children'];

      setState(() {
        posts.insertAll(0, children);
      });
    } else {
      // Handle error
      print('Error: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPosts();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    // set timer time here
    timer = Timer.periodic(Duration(minutes: 2), (_) {
      fetchPosts();
    });
  }

  Future<void> refreshPosts() async {
    await fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reddit Scraper'),
      ),
      body: RefreshIndicator(
        onRefresh: refreshPosts,
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index]['data'];
            return ListTile(
              title: Text(
                post['title'],
              ),
              subtitle: Text(
                post['author'],
              ),
            );
          },
        ),
      ),
    );
  }
}
