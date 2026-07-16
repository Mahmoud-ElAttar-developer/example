class RealTimeArticles {
  String? message;

  RealTimeArticles({this.message});

  factory RealTimeArticles.fromJson(Map<String, dynamic> json) {
    return RealTimeArticles(message: json['message'] as String?);
  }

  Map<String, dynamic> toJson() => {'message': message};
}
