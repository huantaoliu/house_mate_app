import 'package:flutter/foundation.dart';

class CategoryM {
  final int id;
  final String image;
  final String title;
  final String subTitle;

  CategoryM({
    @required this.id,
    @required this.image,
    @required this.title,
    @required this.subTitle,
  });

  CategoryM copyWith({int id, String image, String title, String subTitle}) {
    return CategoryM(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
    );
  }
}
