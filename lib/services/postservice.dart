import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:example_project/custom_classes/post.dart';

class PostService {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> fetchPosts() async {
    List body = [];
    List<Post> posts = [];

    try {
      final response = await http.get(
        Uri.parse(postsURL),
      );

      body = jsonDecode(response.body);

      posts = body.map((element) => Post.fromJson(element)).toList();
    } catch (err) {
      print(err);
    }

    return posts;
  }
}
