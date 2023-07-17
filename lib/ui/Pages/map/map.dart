import 'package:dhbworld_flutter/ui/Pages/map/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class Map extends StatelessWidget {
  final controller = Get.put(MapController());

  Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Obx(() => Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: <Widget>[
                    DropdownMenu<String>(
                      label: const Text("Room"),
                      inputDecorationTheme: const InputDecorationTheme(
                          filled: true
                      ),
                      controller: controller.roomController,
                      enableSearch: true,
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
                    DropdownMenu<String>(
                      label: const Text("Entrance"),
                      inputDecorationTheme: const InputDecorationTheme(
                          filled: true
                      ),
                      controller: controller.entranceController,
                      enableSearch: true,
                      requestFocusOnTap: true,
                      dropdownMenuEntries: controller.entranceList,
                      width: 350,
                      onSelected: (String? s) {
                        FocusScope.of(context).unfocus();
                        controller.selectedEntrance(s);
                      },
                    ),
                    Center(
                      child: FilledButton(
                          onPressed: () {
                            controller.showMap();
                            FocusScope.of(context).unfocus();
                          },
                          child: const Text("Show path")
                      )
                    ),
                    if (controller.mapImage.value != null) SizedBox(
                      width: double.infinity,
                      height: 300,
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
              ],
            )
          )
      )
    );
  }

}