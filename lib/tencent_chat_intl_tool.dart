library tencent_chat_intl_tool;

import 'package:flutter/widgets.dart';
import 'package:tencent_chat_intl_tool/localizations/tencent_cloud_chat_localizations.dart';

TencentCloudChatLocalizations tL10n = TencentChatIntlTool.localization!;

class TencentChatIntlTool{
  static TencentCloudChatLocalizations? localization;

  static init(BuildContext context){
    localization = TencentCloudChatLocalizations.of(context);
  }
}