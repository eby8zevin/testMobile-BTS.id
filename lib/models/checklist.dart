import 'package:todo_list/models/checklistitem.dart';

class Checklist {
  final int id;
  final String name;
  final List<ChecklistItem> items;
  bool checklistCompletionStatus;

  Checklist({
    required this.id,
    required this.name,
    required this.items,
    required this.checklistCompletionStatus,
  });

  factory Checklist.fromJson(Map<String, dynamic> json) {
    return Checklist(
      id: json['id'],
      name: json['name'],
      items: (json['items'] as List)
          .map((item) => ChecklistItem.fromJson(item))
          .toList(),
      checklistCompletionStatus: json['checklistCompletionStatus'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'items': items.map((item) => item.toJson()).toList(),
      'checklistCompletionStatus': checklistCompletionStatus,
    };
  }
}