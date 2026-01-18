import '../../domain/entities/base_entity.dart';

class BaseModel extends BaseEntity {
  BaseModel({required super.id, required super.title});

  factory BaseModel.fromJson(Map<String, dynamic> json) {
    return BaseModel(
      id: json['id'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
    };
  }
}