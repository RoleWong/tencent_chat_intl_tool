// Copyright (c) 1998-2023 Tencent, Inc. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'tencent_cloud_chat_localizations_en.dart';
import 'tencent_cloud_chat_localizations_ja.dart';
import 'tencent_cloud_chat_localizations_ko.dart';
import 'tencent_cloud_chat_localizations_zh.dart';

/// Callers can lookup localized strings with an instance of TencentCloudChatLocalizations
/// returned by `TencentCloudChatLocalizations.of(context)`.
///
/// Applications need to include `TencentCloudChatLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localizations/tencent_cloud_chat_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: TencentCloudChatLocalizations.localizationsDelegates,
///   supportedLocales: TencentCloudChatLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the TencentCloudChatLocalizations.supportedLocales
/// property.
abstract class TencentCloudChatLocalizations {
  TencentCloudChatLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static TencentCloudChatLocalizations? of(BuildContext context) {
    return Localizations.of<TencentCloudChatLocalizations>(context, TencentCloudChatLocalizations);
  }

  static const LocalizationsDelegate<TencentCloudChatLocalizations> delegate = _TencentCloudChatLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja'),
    Locale('ko'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant')
  ];

  /// No description provided for @album.
  ///
  /// In en, this message translates to:
  /// **'Album'**
  String get album;
}

class _TencentCloudChatLocalizationsDelegate extends LocalizationsDelegate<TencentCloudChatLocalizations> {
  const _TencentCloudChatLocalizationsDelegate();

  @override
  Future<TencentCloudChatLocalizations> load(Locale locale) {
    return SynchronousFuture<TencentCloudChatLocalizations>(lookupTencentCloudChatLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ja', 'ko', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_TencentCloudChatLocalizationsDelegate old) => false;
}

TencentCloudChatLocalizations lookupTencentCloudChatLocalizations(Locale locale) {

  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh': {
  switch (locale.scriptCode) {
    case 'Hans': return TencentCloudChatLocalizationsZhHans();
case 'Hant': return TencentCloudChatLocalizationsZhHant();
   }
  break;
   }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return TencentCloudChatLocalizationsEn();
    case 'ja': return TencentCloudChatLocalizationsJa();
    case 'ko': return TencentCloudChatLocalizationsKo();
    case 'zh': return TencentCloudChatLocalizationsZh();
  }

  throw FlutterError(
    'TencentCloudChatLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
