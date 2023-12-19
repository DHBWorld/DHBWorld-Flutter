import 'package:dhbworld_flutter/ui/Pages/map/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

import '../../../generated/l10n.dart';

class Map extends StatelessWidget {
  final controller = Get.put(MapController());

  Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Obx(() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownMenu<String>(
                label: Text(S.current.room),
                inputDecorationTheme: const InputDecorationTheme(
                    filled: true
                ),
                controller: controller.roomController,
                enableFilter: true,
                requestFocusOnTap: true,
                dropdownMenuEntries: controller.roomList,
                width: 350,
                menuHeight: 300,
                onSelected: (String? s) {
                  FocusScope.of(context).unfocus();
                  controller.selectedRoom(s);
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownMenu<String>(
                label: Text(S.current.entrance),
                inputDecorationTheme: const InputDecorationTheme(
                    filled: true
                ),
                controller: controller.entranceController,
                enableSearch: true,
                requestFocusOnTap: true,
                width: 350,
                dropdownMenuEntries: controller.entranceList,
                onSelected: (String? s) {
                  FocusScope.of(context).unfocus();
                  controller.selectedEntrance(s);
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          FilledButton(
              onPressed: () {
                controller.showMap();
                FocusScope.of(context).unfocus();
              },
              child: Text(S.current.show_path)
          ),
          const SizedBox(height: 16),
          if (controller.mapImage.value != null) Expanded(
            child: ClipRect(
              child: PhotoView(
              imageProvider: controller.mapImage.value!,
              minScale: PhotoViewComputedScale.contained,
              maxScale: 3.0,
              backgroundDecoration: const BoxDecoration(color: Colors.white),
              )
            ),
          )
        ],
      ))
    );
  }

}