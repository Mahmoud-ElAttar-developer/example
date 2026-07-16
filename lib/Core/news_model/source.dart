class Source {
  String? id;
  String? name;
  String? url;

  Source({this.id, this.name, this.url});

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json['id'] as String?,
    name: json['name'] as String?,
    url: json['url'] as String?,
  );

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'url': url};
}
