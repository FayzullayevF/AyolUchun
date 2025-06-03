// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class MyLocalizationsEn extends MyLocalizations {
  MyLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome';

  @override
  String get welcomeTitle =>
      'Please enter your email address and password below to access the learning platform';

  @override
  String get enter => 'Enter';

  @override
  String get forgotPassword => 'Forgotten password';

  @override
  String get enterByThis => 'Enter by this';

  @override
  String get signUp => 'Sign Up';

  @override
  String get enterToSystemBy => 'By entering to the system you ';

  @override
  String get usingCondition => 'using conditions';

  @override
  String get and => 'and ';

  @override
  String get security => 'Privacy Policy';

  @override
  String get confirmAgreement => 'should confirm';

  @override
  String get continues => 'Continue';

  @override
  String get enterPhoneNumberSubtitle =>
      'Please enter your phone number to access the learning platform.';

  @override
  String get enterPhoneNumber => 'Phone number';

  @override
  String get confirmCodeSent =>
      'A verification code has been sent to your phone number';

  @override
  String get verificationCode => 'Verification code';

  @override
  String get successfullyConfirmed => 'Successfully confirmed';

  @override
  String get phoneNumberConfirmed =>
      'Your phone number has been successfully verified';

  @override
  String get understand => 'Understand';
}
