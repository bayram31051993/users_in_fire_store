import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleTextOverride extends DefaultMaterialLocalizations {
/*
    Duşenbe Monday.
    Sişenbe Tuesday.
    Çarşenbe Wednesday.
    Penşenbe Thursday.
    Anna Friday.
    Şenbe Saturday.
    Ýekşenbe Sunday.
 */

  // Ordered to match DateTime.monday=1, DateTime.sunday=6
  static const List<String> _shortWeekdays = <String>[
    'Du',
    'Si',
    'Çar',
    'Pen',
    'Anna',
    'Şenbe',
    'Ýek',
  ];
  static const List<String> _shortMonths = <String>[
    'Ýan',
    'Few',
    'Mar',
    'Apr',
    'Maý',
    'Iýun',
    'Iýul',
    'Awg',
    'Sen',
    'Okt',
    'Noý',
    'Dek',
  ];

  static const List<String> _months = <String>[
    'Ýanwar',
    'Fewral',
    'Mart',
    'Aprel',
    'Maý',
    'Iýun',
    'Iýul',
    'Awgust',
    'Sentiýabr',
    'Oktýabr',
    'Noýabr',
    'Dekabr',
  ];

  // ignore: avoid_unused_constructor_parameters
  LocaleTextOverride(Locale locale) : super();
  @override
  String get backButtonTooltip => 'back'.tr;

  @override
  String get datePickerHelpText => 'select_date'.tr;

  @override
  String get dateInputLabel => 'enter_date'.tr;

  @override
  String get invalidDateFormatLabel => 'Invalid format.';

  @override
  String get invalidDateRangeLabel => 'Invalid range.';

  @override
  String get dateOutOfRangeLabel => 'Out of range.';

  @override
  String get dateSeparator => '.';

  @override
  String get dateHelpText => 'mm.dd.yyyy';

  @override
  String get cancelButtonLabel => 'cancel'.tr;

  @override
  String get okButtonLabel => 'ok'.tr;

  @override
  String formatShortDate(DateTime date) {
    final String month = _shortMonths[date.month - DateTime.january];
    return '$month ${date.day}, ${date.year}';
  }

  @override
  String formatMediumDate(DateTime date) {
    final String day = _shortWeekdays[date.weekday - DateTime.monday];
    final String month = _shortMonths[date.month - DateTime.january];
    return '$day, $month ${date.day}';
  }

  // @override
  // String formatFullDate(DateTime date) {
  //   final String month = _months[date.month - DateTime.january];
  //   return '${_weekdays[date.weekday - DateTime.monday]}, $month ${date.day}, ${date.year}';
  // }

  @override
  String formatMonthYear(DateTime date) {
    final String year = formatYear(date);
    final String month = _months[date.month - DateTime.january];
    return '$month $year';
  }
}

class LocaleTextDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const LocaleTextDelegate();
  @override
  Future<LocaleTextOverride> load(Locale locale) {
    return SynchronousFuture(LocaleTextOverride(locale));
  }

  @override
  bool shouldReload(LocaleTextDelegate old) => false;
  @override
  bool isSupported(Locale locale) => true;
}
