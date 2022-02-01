import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:togo_getx_project/app/data/models/task.dart';
import 'package:togo_getx_project/app/models/home/controller.dart';
import 'package:togo_getx_project/app/core/utils/extensions.dart';
import 'package:togo_getx_project/app/models/home/widgets/add_card.dart';
import 'package:togo_getx_project/app/models/home/widgets/task_card.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                'My List',
                style:
                    TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Obx(
              () => GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ...controller.tasks
                      .map((element) => TaskCard(task: element))
                      .toList(),
                  AddCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
