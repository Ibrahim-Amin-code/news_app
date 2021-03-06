
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';

class ArchivedTasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AppCubit, AppStates>(

      listener: (context, state) {},
      builder: (context, state) {
        var tasks = AppCubit.get(context).archiveTasks;
        return ListView.separated(

          itemBuilder: (context, index)
          {
            return buildTaskItem(tasks[index], context);
          } ,
          separatorBuilder: (context, index) => Container(

            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
          itemCount: tasks.length,
        );
      },
    );
  }
}
