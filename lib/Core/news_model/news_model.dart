import 'article.dart';
import 'information.dart';

class NewsModel {
  Information? information;
  int? totalArticles;
  List<Article>? articles;

  NewsModel({this.information, this.totalArticles, this.articles});

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
    information: json['information'] == null
        ? null
        : Information.fromJson(json['information'] as Map<String, dynamic>),
    totalArticles: json['totalArticles'] as int?,
    articles: (json['articles'] as List<dynamic>?)
        ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'information': information?.toJson(),
    'totalArticles': totalArticles,
    'articles': articles?.map((e) => e.toJson()).toList(),
  };
}
