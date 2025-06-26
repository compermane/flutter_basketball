// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => "Flutter Basketball";

  @override
  String get free_throw => "Free Throw";

  @override
  String get two_points => "2 Points";

  @override
  String get three_points => "3 Points";

  @override
  String get revert_points => "Revert Points";
}