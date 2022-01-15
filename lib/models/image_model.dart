class ImageModel {
  late int id;
  late String url;
  late String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> persedJson) {
    id = persedJson['id'];
    url = persedJson['url'];
    title = persedJson['title'];
  }
}
