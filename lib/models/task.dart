class Task {
  final String id;
  final String title;
  final String description;
  final String status;
  final DateTime deadline;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.deadline,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'description': description,
      'status': status,
      'deadline': deadline.toIso8601String(),
    };
  }
}
