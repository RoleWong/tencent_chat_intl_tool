// Copyright (c) 1998-2023 Tencent, Inc. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import 'tencent_cloud_chat_localizations.dart';

/// The translations for Chinese (`zh`).
class TencentCloudChatLocalizationsZh extends TencentCloudChatLocalizations {
  TencentCloudChatLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get album => '相册';
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class TencentCloudChatLocalizationsZhHans extends TencentCloudChatLocalizationsZh {
  TencentCloudChatLocalizationsZhHans(): super('zh_Hans');

  @override
  String get album => '相册';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class TencentCloudChatLocalizationsZhHant extends TencentCloudChatLocalizationsZh {
  TencentCloudChatLocalizationsZhHant(): super('zh_Hant');

  @override
  String get album => '相片';
}
