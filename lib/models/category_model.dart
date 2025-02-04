

class CategoryModel {
   String slug;
   String name;
   String url;
  CategoryModel({
    required this.slug,
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slug': slug,
      'name': name,
      'url': url,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      slug: map['slug'] as String,
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
