import 'package:flutter/material.dart';

class DemoLocalizations {
  DemoLocalizations(this.locale);

  final Locale locale;

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Hello World',
    },
    'zh': {
      'title': '嗨~ 世界!',
    },
  };

  String get title {
    return _vocabularies['title'];
  }

  Map get _vocabularies {
    return _localizedValues[locale.languageCode] ?? _localizedValues['en'];
  }

  String get titleA {
    return _localizedValues[locale.languageCode]['title'];
  }
}

class DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<DemoLocalizations> load(Locale locale) async {
    print('${locale.languageCode} ${locale.countryCode}');
    return DemoLocalizations(locale);
  }

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}
