class CarouselItemModel {
  final String assetImage;
  final String title;
  final String text;

  CarouselItemModel(
      {required this.assetImage, required this.title, required this.text});

  factory CarouselItemModel.fromJson(Map<String, dynamic> json) {
    return CarouselItemModel(
      assetImage: json['assetImage'] as String,
      title: json['title'] as String,
      text: json['text'] as String,
    );
  }
}
