import 'package:flutter/material.dart';
import 'package:todo_app/modules/archived_screen.dart';
import 'package:todo_app/modules/done_screen.dart';
import 'package:todo_app/modules/new_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int currentindex=0;
  List<Widget> screens=[
    NewScreen(),
    DoneScreen(),
    ArchivedScreen(),
  ];
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("ToDo App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: Center(child: screens[currentindex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index){
          setState(() {
            currentindex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu_outlined),label: "Tasks"),
          BottomNavigationBarItem(icon: Icon(Icons.done_outline),label: "Done"),
          BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: "Archived"),
        ],
      ),
    );
  }
}
