class TaskModel {
  final String title;
  final String content;
  final String startTime;
  final String endTime;
  final bool isFinished;

  TaskModel(
      {required this.title,
      required this.content,
      required this.startTime,
      required this.endTime,
      required this.isFinished});

  TaskModel fromJson(Map<String, dynamic> json) {
    return TaskModel(
      title: json['title'],
      content: json['content'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      isFinished: json['isFinished'],
    );
  }

  Map<String, dynamic> toMap(TaskModel taskModel) {
    return {
      'title': taskModel.title,
      'content': taskModel.content,
      'startTime': taskModel.startTime,
      'endTime': taskModel.endTime,
      'isFinished': taskModel.isFinished
    };
  }
}
