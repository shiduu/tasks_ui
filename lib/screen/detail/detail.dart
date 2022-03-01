import 'package:flutter/material.dart';
import 'package:tasks_ui/screen/detail/widgets/date_picker.dart';
import 'package:tasks_ui/screen/detail/widgets/task_title.dart';
import 'package:tasks_ui/screen/detail/widgets/time_line.dart';

import '../../models/task.dart';

class DetailPage extends StatelessWidget {
  Task task;
  DetailPage(this.task);
  @override
  Widget build(BuildContext context) {
    final detailList = task.desc;
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            _buildAppBar(context),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DatePicker(),
                    TaskTitle(),
                  ],
                ),
              ),
            ),
            detailList == null
                ? SliverFillRemaining(
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'No tasks today',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                  )
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (_, index) => TimeLine(detailList[index]),
                        childCount: detailList.length),
                  )
          ],
        ));
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, size: 30))
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${task.title} tasks',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              ' you have ${task.lef} tasks today',
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            )
          ],
        ),
      ),
    );
  }
}
