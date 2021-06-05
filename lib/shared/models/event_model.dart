import 'dart:convert';

class EventModel {
  final String title;
  final DateTime created;
  final double value;
  final int people;

  EventModel({
    required this.title,
    required this.created,
    required this.value,
    required this.people,
  });

  EventModel copyWith({
    String? title,
    DateTime? created,
    double? value,
    int? people,
  }) {
    return EventModel(
      title: title ?? this.title,
      created: created ?? this.created,
      value: value ?? this.value,
      people: people ?? this.people,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'created': created.millisecondsSinceEpoch,
      'value': value,
      'people': people,
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      title: map['title'],
      created: DateTime.fromMillisecondsSinceEpoch(map['created']),
      value: map['value'],
      people: map['people'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EventModel.fromJson(String source) =>
      EventModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EventModel(title: $title, created: $created, value: $value, people: $people)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EventModel &&
        other.title == title &&
        other.created == created &&
        other.value == value &&
        other.people == people;
  }

  @override
  int get hashCode {
    return title.hashCode ^ created.hashCode ^ value.hashCode ^ people.hashCode;
  }
}
