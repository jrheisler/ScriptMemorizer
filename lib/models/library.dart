class Category {
  final String name;
  final List<Element> elements;

  Category({required this.name, required this.elements});

  factory Category.fromJson(Map<String, dynamic> json) {
    var list = json['elements'] as List;
    List<Element> elementsList = list.map((i) => Element.fromJson(i)).toList();

    return Category(
      name: json['name'],
      elements: elementsList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'elements': elements.map((e) => e.toJson()).toList(),
    };
  }
}

class Element {
  final String owner;
  final String path;
  final String license;
  final String name;
  final String about;

  Element({required this.owner, required this.path, required this.license, required this.name, required this.about});

  factory Element.fromJson(Map<String, dynamic> json) {
    return Element(
      owner: json['owner'],
      path: json['path'],
      license: json['license'],
      name: json['name'],
      about: json['about'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'owner': owner,
      'path': path,
      'license': license,
      'name': name,
      'about': about,
    };
  }
}

