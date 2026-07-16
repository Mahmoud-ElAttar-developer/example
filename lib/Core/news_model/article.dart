import 'source.dart';

class Article {
  String? id;
  String? title;
  String? description;
  String? content;
  String? url;
  String? image;
  String? publishedAt;
  String? lang;
  Source? source;

  Article({
    this.id,
    this.title,
    this.description,
    this.content,
    this.url,
    this.image,
    this.publishedAt,
    this.lang,
    this.source,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    id: json['id'] as String?,
    title: json['title'] as String?,
    description: json['description'] as String?,
    content: json['content'] as String?,
    url: json['url'] as String?,
    image: json['image'] as String?,
    publishedAt: json['publishedAt'] as String?,
    lang: json['lang'] as String?,
    source: json['source'] == null
        ? null
        : Source.fromJson(json['source'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'content': content,
    'url': url,
    'image': image,
    'publishedAt': publishedAt,
    'lang': lang,
    'source': source?.toJson(),
  };
}
