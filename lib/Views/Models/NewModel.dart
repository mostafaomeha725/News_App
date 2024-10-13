class NewModel {
  final String? title;
  final String? description;
  final String? image;
  final String? url;

  NewModel(
      {required this.title,
      required this.description,
      required this.image,
      required this.url});
  factory NewModel.fromjson(Map<String, dynamic> jsonData) {
    return NewModel(
        title: jsonData['title'],
        description: jsonData['description'],
        image: jsonData["urlToImage"],
        url: jsonData['url']);
  }
}
