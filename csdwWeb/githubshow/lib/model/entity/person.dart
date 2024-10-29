import 'package:json_annotation/json_annotation.dart';
part 'person.g.dart';
@JsonSerializable()
class Person {
  String ? name;
  int? age;

  Person({
    this.age,
    this.name
  });

  factory Person.fromJson(dynamic json) =>
      _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);

}