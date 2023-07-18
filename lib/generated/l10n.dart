// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Die All-in-One DHBW App.`
  String get all_in_one_app {
    return Intl.message(
      'Die All-in-One DHBW App.',
      name: 'all_in_one_app',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `DHBWorld`
  String get dhbworld {
    return Intl.message(
      'DHBWorld',
      name: 'dhbworld',
      desc: '',
      args: [],
    );
  }

  /// `Entrance`
  String get entrance {
    return Intl.message(
      'Entrance',
      name: 'entrance',
      desc: '',
      args: [],
    );
  }

  /// `Can only contain 12 digits`
  String get error_only_12_digits {
    return Intl.message(
      'Can only contain 12 digits',
      name: 'error_only_12_digits',
      desc: '',
      args: [],
    );
  }

  /// `Can only contain 7 digits`
  String get error_only_7_digits {
    return Intl.message(
      'Can only contain 7 digits',
      name: 'error_only_7_digits',
      desc: '',
      args: [],
    );
  }

  /// `Free notes`
  String get free_notes {
    return Intl.message(
      'Free notes',
      name: 'free_notes',
      desc: '',
      args: [],
    );
  }

  /// `Library number`
  String get library_number {
    return Intl.message(
      'Library number',
      name: 'library_number',
      desc: '',
      args: [],
    );
  }

  /// `Main Entrance`
  String get main_entrance {
    return Intl.message(
      'Main Entrance',
      name: 'main_entrance',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get map {
    return Intl.message(
      'Map',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `Matriculation number`
  String get matriculation_number {
    return Intl.message(
      'Matriculation number',
      name: 'matriculation_number',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `No map available`
  String get no_map_available {
    return Intl.message(
      'No map available',
      name: 'no_map_available',
      desc: '',
      args: [],
    );
  }

  /// `North Entrance`
  String get north_entrance {
    return Intl.message(
      'North Entrance',
      name: 'north_entrance',
      desc: '',
      args: [],
    );
  }

  /// `Personal information`
  String get personal_information {
    return Intl.message(
      'Personal information',
      name: 'personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Room`
  String get room {
    return Intl.message(
      'Room',
      name: 'room',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Show path`
  String get show_path {
    return Intl.message(
      'Show path',
      name: 'show_path',
      desc: '',
      args: [],
    );
  }

  /// `South Entrance`
  String get south_entrance {
    return Intl.message(
      'South Entrance',
      name: 'south_entrance',
      desc: '',
      args: [],
    );
  }

  /// `Student E-Mail`
  String get student_email {
    return Intl.message(
      'Student E-Mail',
      name: 'student_email',
      desc: '',
      args: [],
    );
  }

  /// `Text copied`
  String get text_copied {
    return Intl.message(
      'Text copied',
      name: 'text_copied',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
