import 'real_time_articles.dart';

class Information {
  RealTimeArticles? realTimeArticles;

  Information({this.realTimeArticles});

  factory Information.fromJson(Map<String, dynamic> json) => Information(
    realTimeArticles: json['realTimeArticles'] == null
        ? null
        : RealTimeArticles.fromJson(
            json['realTimeArticles'] as Map<String, dynamic>,
          ),
  );

  Map<String, dynamic> toJson() => {
    'realTimeArticles': realTimeArticles?.toJson(),
  };
}
