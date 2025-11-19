class Task {
  int? id;
  String? title;
  String? date;

  Task({this.id, this.title, this.date});

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['date'] = date;
    return data;
  }
}