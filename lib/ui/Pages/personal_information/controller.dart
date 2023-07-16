import 'package:dhbworld_flutter/ui/utilities/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class PersonalInformationController extends GetxController {
  SharedPreferences? _prefs;

  final editMode = false.obs;

  final matriculationNumberError = Rxn<String>();
  final libraryNumberError = Rxn<String>();

  final nameController = TextEditingController();
  final matriculationNumberController = TextEditingController();
  final libraryNumberController = TextEditingController();
  final studentEmailController = TextEditingController();
  final notesController = TextEditingController();

  PersonalInformationController() {
    init();
  }

  init() async {
    await initPrefs();
    initializeData();
  }

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  initializeData() {
    nameController.text = _prefs?.getString("pi_name") ?? "";
    matriculationNumberController.text = _prefs?.getString("pi_matriculationNumber") ?? "";
    libraryNumberController.text = _prefs?.getString("pi_libraryNumber") ?? "";
    studentEmailController.text = _prefs?.getString("pi_email") ?? "";
    notesController.text = _prefs?.getString("pi_notes") ?? "";
  }

  saveData() async {
    resetErrorMessages();

    if (checkMNumber(matriculationNumberController.text) && checkLNumber(libraryNumberController.text)) {
      await _prefs?.setString("pi_name", nameController.text);
      await _prefs?.setString("pi_matriculationNumber", matriculationNumberController.text);
      await _prefs?.setString("pi_libraryNumber", libraryNumberController.text);
      await _prefs?.setString("pi_email", studentEmailController.text);
      await _prefs?.setString("pi_notes", notesController.text);
      editMode(false);
      initializeData();
    }
  }

  cancel() {
    resetErrorMessages();

    editMode(false);
    initializeData();
  }

  resetErrorMessages() {
    matriculationNumberError.value = null;
    libraryNumberError.value = null;
  }

  bool checkMNumber(String text) {
    if (text.isNotEmpty) {
      int? mNumberInt = int.tryParse(text);
      if (mNumberInt == null || mNumberInt > 9999999) {
        matriculationNumberError("Can only contain 7 digits");
        return false;
      }
    }
    return true;
  }

  bool checkLNumber(String text) {
    if (text.isNotEmpty) {
      int? mNumberInt = int.tryParse(text);
      if (mNumberInt == null || mNumberInt > 999999999999) {
        libraryNumberError("Can only contain 12 digits");
        return false;
      }
    }
    return true;
  }

  copyToClipboard(BuildContext context, String text) async {
    await Clipboard.setData(ClipboardData(text: text));
    if (context.mounted) {
      Snackbar.create("Text copied");
    }
  }

}