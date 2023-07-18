import 'package:dhbworld_flutter/ui/Pages/personal_information/pi_controller.dart';
import 'package:dhbworld_flutter/ui/utilities/focus/always_disabled_focus_node.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:dhbworld_flutter/values/colors.dart';

import '../../../generated/l10n.dart';

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
                      labelText: S.current.name,
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
                        labelText: S.current.matriculation_number,
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
                        labelText: S.current.library_number,
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
                        labelText: S.current.student_email,
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
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: S.current.free_notes),
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
                            style: FilledButton.styleFrom(backgroundColor: DColors.grey_dark),
                            child: Text(S.current.cancel),
                          ),
                          FilledButton(
                            onPressed: () async => {await controller.saveData()},
                            style: FilledButton.styleFrom(backgroundColor: DColors.red),
                            child: Text(S.current.save),
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
