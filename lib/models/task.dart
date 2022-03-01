import 'package:flutter/material.dart';
import 'package:tasks_ui/constants/colors.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? buttonColor;
  num? lef;
  num? done;
  List<Map<String, dynamic>>? desc;
  bool isLast;
  Task({
    this.iconData,
    this.title,
    this.bgColor,
    this.iconColor,
    this.lef,
    this.buttonColor,
    this.done,
    this.desc,
    this.isLast = false,
  });

  static List<Task> generateTasks() {
    return [
      Task(
          iconData: Icons.favorite_rounded,
          title: 'favorites',
          bgColor: kBlueLight,
          iconColor: kBlueDark,
          buttonColor: kBlue,
          lef: 2,
          desc: [
            {
              'time': '9.00 am',
              'title': 'Go for a walk with my wife',
              'slot': '9.00 - 10.00 am',
              'tlColor': kRedDark,
              'bgColor': kRedLight
            },
            {
              'time': '10.00 am',
              'title': 'shot on dribbble',
              'slot': '10.00 - 11.00 am',
              'tlColor': kBlueDark,
              'bgColor': kBlueLight
            },
            {
              'time': '11.00 am',
              'title': '',
              'slot': '',
              'tlColor': kBlueDark,
            },
            {
              'time': '12.00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '1.00 pm',
              'title': 'call with clients',
              'slot': '1.00 - 2.00 pm',
              'tlColor': kYellowDark,
              'bgColor': kYellowLight
            },
            {
              'time': '2.00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '3.00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '4.00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
          ],
          done: 6
          ),
      Task(
          iconData: Icons.person_rounded,
          title: 'personal',
          bgColor: kYellowLight,
          iconColor: kYellowDark,
          buttonColor: kYellow,
          lef: 5,
          done: 1),
      Task(
          iconData: Icons.cases_rounded,
          title: 'Work',
          bgColor: kRedLight,
          iconColor: kRedDark,
          buttonColor: kRed,
          lef: 3,
          done: 5),
      Task(isLast: true)
    ];
  }
}
