import 'package:first/constants/colors.dart';
import 'package:first/model/todo.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo ;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem({Key? key, required this.todo, required this.onDeleteItem,required this.onToDoChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {onToDoChanged(todo);},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //contentPadding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 5),// hedhi nzid'ha ba3d ma na3mel delete button
        tileColor: Colors.white,

        //houni taw bech nzid l icon
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),

        //taw bech nzid text
        title:  Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 17,
              color: tdBlack,
              decoration:todo.isDone? TextDecoration.lineThrough : null,),
        ),

        //taw bech nzid l delete icon
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(color: Colors.white,iconSize: 18,icon: const Icon(Icons.delete),onPressed: (){onDeleteItem(todo.id);},),
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12,),
        ),
      ),
    );
  }
}
