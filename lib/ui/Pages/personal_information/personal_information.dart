import 'package:dhbworld_flutter/ui/Pages/personal_information/pi_controller.dart';
import 'package:dhbworld_flutter/ui/utilities/focus/always_disabled_focus_node.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dhbworld_flutter/values/mColors.dart';

class PersonalInformation extends StatelessWidget {
  final controller = Get.put(PersonalInformationController());

  PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Obx(() =>
          Visibility(
              visible: !controller.editMode.value,
              child: FloatingActionButton(
                onPressed: () => {
                  controller.editMode(true)
                },
                child: const Icon(Icons.edit, color: Colors.white),
              )
          )
      ),
      body: Obx(() => Scrollbar(
          child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Wrap(runSpacing: 8, children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "Name",
                        suffixIcon: IconButton(
                            onPressed: () => controller.copyToClipboard(context, controller.nameController.text),
                            icon: const Icon(Icons.copy))),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    controller: controller.nameController,
                    enableInteractiveSelection: controller.editMode.value,
                    focusNode: !controller.editMode.value ? AlwaysDisabledFocusNode() : null,
                    readOnly: !controller.editMode.value,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Matriculation number",
                        errorText: controller.matriculationNumberError.value,
                        enabled: true,
                        suffixIcon: IconButton(
                            onPressed: () => controller.copyToClipboard(context, controller.matriculationNumberController.text),
                            icon: const Icon(Icons.copy))),
                    maxLines: 1,
                    keyboardType: TextInputType.number,
                    controller: controller.matriculationNumberController,
                    enableInteractiveSelection: controller.editMode.value,
                    focusNode: !controller.editMode.value ? AlwaysDisabledFocusNode() : null,
                    readOnly: !controller.editMode.value,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Library number",
                        errorText: controller.libraryNumberError.value,
                        suffixIcon: IconButton(
                            onPressed: () => controller.copyToClipboard(context, controller.libraryNumberController.text),
                            icon: const Icon(Icons.copy))),
                    maxLines: 1,
                    keyboardType: TextInputType.number,
                    controller: controller.libraryNumberController,
                    enableInteractiveSelection: controller.editMode.value,
                    focusNode: !controller.editMode.value ? AlwaysDisabledFocusNode() : null,
                    readOnly: !controller.editMode.value,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Student E-Mail",
                        suffixIcon: IconButton(
                            onPressed: () => controller.copyToClipboard(context, controller.studentEmailController.text),
                            icon: const Icon(Icons.copy))),
                    maxLines: 1,
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.studentEmailController,
                    enableInteractiveSelection: controller.editMode.value,
                    focusNode: !controller.editMode.value ? AlwaysDisabledFocusNode() : null,
                    readOnly: !controller.editMode.value,
                  ),
                  SizedBox(
                    height: 300,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Free notes"),
                      keyboardType: TextInputType.multiline,
                      controller: controller.notesController,
                      maxLines: null,
                      expands: true,
                      enableInteractiveSelection: controller.editMode.value,
                      focusNode: !controller.editMode.value ? AlwaysDisabledFocusNode() : null,
                      readOnly: !controller.editMode.value,
                    ),
                  ),
                  Visibility(
                    visible: controller.editMode.value,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FilledButton(
                            onPressed: () => {controller.cancel()},
                            style: FilledButton.styleFrom(backgroundColor: mColors.grey_dark),
                            child: const Text("Cancel"),
                          ),
                          FilledButton(
                            onPressed: () async => {await controller.saveData()},
                            style: FilledButton.styleFrom(backgroundColor: mColors.red),
                            child: const Text("Save"),
                          )
                        ],
                      )
                  )
                ]),
              )
          )
      )
      ),
    );
  }
}
