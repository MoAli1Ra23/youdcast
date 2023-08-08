import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youdcast/feature/file_history/data/model/form.dart' as orm;

class FormUi extends StatelessWidget {
  FormUi({super.key});
  var frm = Get.put(orm.Form());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(() => Column(
              children: [
                Text(frm.name.value),
                ElevatedButton(
                    onPressed: () => frm.setname(), child: const Text("name")),
                Text(frm.countofrooms.value.toString()),
                ElevatedButton(
                    onPressed: () => frm.setroom(), child: const Text("Rooms")),
              ],
            )),
      ),
    );
  }
}
