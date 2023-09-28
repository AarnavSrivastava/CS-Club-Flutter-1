class Post {
  int userID;
  int postID;
  String title;
  String body;

  Post({
    required this.userID,
    required this.postID,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userID: json["userId"],
      postID: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }
}
