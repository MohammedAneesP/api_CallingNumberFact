import 'package:json_annotation/json_annotation.dart';
part 'num_fact_class.g.dart';

@JsonSerializable()
class NumFactClass {
  @JsonKey(name: 'text')
  String? text;
  @JsonKey(name: 'number')
  int? number;
  @JsonKey(name: 'found')
  bool? found;
  @JsonKey(name: 'type')
  String? type;

  NumFactClass({this.text, this.number, this.found, this.type});

  factory NumFactClass.fromJson(Map<String, dynamic> json) {
    return _$NumFactClassFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumFactClassToJson(this);
}
