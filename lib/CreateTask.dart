import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {

  TimeOfDay _timeOfDay = TimeOfDay.now();

  Future<Null> selectTime (BuildContext context) async {
    _timeOfDay = await showTimePicker(
        context: context,
        initialTime: _timeOfDay);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar um Compromisso"),
        centerTitle:true,
      ),
      body:Container(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Nome da tarefa",
                  labelStyle: TextStyle(
                      color: Colors.black
                  ),
                ),
              ),

            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Hora",
                  labelStyle: TextStyle(
                      color: Colors.black
                  ),
                ),
                onTap: (){
                  selectTime(context);
                },

              ),

            )

          ],

        ),

      )



    );
  }
}
