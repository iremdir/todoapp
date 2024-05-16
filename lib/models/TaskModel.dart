class TaskModel {
  final String _title;
  final String _content;
  final String _startTime;
  final String _endTime;
  final bool _isFinished;

  TaskModel(
      {required String title,
      required String content,
      required String startTime,
      required String endTime,
      required bool isFinished})
      : _title = title,
        _content = content,
        _startTime = startTime,
        _endTime = endTime,
        _isFinished = isFinished;

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
      'title': taskModel._title,
      'content': taskModel._content,
      'startTime': taskModel._startTime,
      'endTime': taskModel._endTime,
      'isFinished': taskModel._isFinished
    };
  }
}
