class ArticalModel {
  final String title;
  final String? description;
  final String? image;

  ArticalModel({required this.title, this.description, this.image});
  factory ArticalModel.fromJson(Map<String, dynamic> json) {
    return ArticalModel(
      title: json['title'],
      image: json['urlToImage'],
      description: json['description'],
    );
  }
}
