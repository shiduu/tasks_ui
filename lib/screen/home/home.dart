import 'package:flutter/material.dart';
import 'package:tasks_ui/screen/home/widgets/go_premium.dart';
import 'package:tasks_ui/screen/home/widgets/tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPremium(),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Tasks',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Tasks(),
          ),
        ],
      ),
      bottomNavigationBar: _buildNavgationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        elevation: 0,
        backgroundColor: Colors.black,
        onPressed: (){},
        child: Icon(Icons.add, size: 35,),
        ),
    );
  }
}

Widget _buildNavgationBar() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30)
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 10
        )
      ]
    ),
    child: ClipRRect(
       borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30)
       ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Account')
        ]
      ),
    ),
  );
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Row(children: [
      Container(
        margin: EdgeInsets.only(left: 15),
        height: 45,
        width: 45,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('assets/images/user.png'),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text('Hi, Abdirashid',
          style: TextStyle(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold))
    ]),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 40,
          ))
    ],
  );
}
