class ChecklistItem {
  final int id;
  final String name;
  final bool itemCompletionStatus;

  ChecklistItem({
    required this.id,
    required this.name,
    required this.itemCompletionStatus,
  });

  factory ChecklistItem.fromJson(Map<String, dynamic> json) {
    return ChecklistItem(
      id: json['id'],
      name: json['name'],
      itemCompletionStatus: json['itemCompletionStatus'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'itemCompletionStatus': itemCompletionStatus,
    };
  }
}