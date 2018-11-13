/**
 * 用户信息实体类
 */
class User {
  final String name;
  final String location;
  final String blog;
  final String avatar_url;
  final String html_url;

  User({this.name, this.location, this.blog, this.avatar_url, this.html_url});

  factory User.fromJson(Map<String, dynamic> json) {
    return new User(
      name: json['name'],
      location: json['location'],
      blog: json['blog'],
      avatar_url: json['avatar_url'],
      html_url: json['html_url'],
    );
  }
}
