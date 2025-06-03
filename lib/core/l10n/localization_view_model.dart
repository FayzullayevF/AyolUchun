import 'package:flutter/widgets.dart';

class MyLocalizations extends ChangeNotifier {
  Locale _currentLocale = Locale("en");

  Locale get currentLocal => _currentLocale;

  set currentLocale(Locale locale) {
    if (_currentLocale != locale) {
      _currentLocale = locale;
      notifyListeners();
    }
  }
}
