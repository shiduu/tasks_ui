import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  const TaskTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Tasks',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.2)
            ),
            child: Row(
              children: [
                Text('Timelines',
                style: TextStyle(
                  color: Color.fromARGB(255, 24, 23, 23),
                  fontWeight: FontWeight.bold
                ),
                ),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          )
        ],
      ),
    );
  }
}