class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
});
  static List<ToDo> todoList(){
    return [
      ToDo(id: '01', todoText: 'Morning Exercice', isDone: true),
      ToDo(id: '02', todoText: 'Buy Cafe', isDone: true),
      ToDo(id: '03', todoText: 'Check Emails',isDone: true),
      ToDo(id: '04', todoText: 'Team Meeting'),
      ToDo(id: '05', todoText: 'Work on mobile Apps'),
      ToDo(id: '06', todoText: 'Dinner'),
      ToDo(id: '05', todoText: 'Work on mobile Apps'),
      ToDo(id: '06', todoText: 'Dinner',isDone: true),
    ];
  }
}