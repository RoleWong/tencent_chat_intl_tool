

# Tencent Cloud Chat Internationalization (i18n) Tool

Welcome to the [Tencent Cloud Chat](https://www.tencentcloud.com/zh/products/im?from=pub) Internationalization (i18n) Tool, a dedicated package developed by [Tencent Cloud Chat](https://www.tencentcloud.com/zh/products/im?from=pub) team. This package offers a light, powerful and developer-friendly internationalization language tool tailored for our [Chat UIKit](https://www.tencentcloud.com/document/product/1047/50059) and the applications from our customers.

It is built upon the [official Flutter `intl` solution](https://docs.flutter.dev/ui/accessibility-and-localization/internationalization) and has been further developed and encapsulated to better suit our needs. 

It is recommended to familiarize yourself with the [official internationalization solution](https://docs.flutter.dev/ui/accessibility-and-localization/internationalization) before using this tool. For coding on language template `.arb` files and other factors not covered by this tool, the process is the same as the [official solution](https://docs.flutter.dev/ui/accessibility-and-localization/internationalization).

With this package, you can easily manage multi-language translation entries, add new entries, modify existing ones, and even integrate new languages for your projects. It greatly simplifies the process of creating a multilingual user experience for chat applications, as well as other applications with internationalization needs.

![Sample Image](https://qcloudimg.tencent-cloud.cn/raw/cfdebbe4f935fe73bc8fafd205faa4a9.png)

## Getting Started

1. Add the `tencent_chat_intl_tool` package to your Flutter project's `pubspec.yaml` file.

2. Import the `tencent_chat_intl_tool.dart` file in your project:

   ```dart
   import 'package:tencent_chat_intl_tool/tencent_chat_intl_tool.dart';
   ```

3. Initialize the `TencentChatIntlTool` in your widget tree using the `BuildContext`:

   ```dart
   TencentChatIntlTool.init(context);
   ```

4. Use the `tL10n` global variable to access localized strings:

   ```dart
   String album = tL10n.album;
   ```

## Customizing Internationalization

If you want to customize the internationalization features, such as adding new supported languages or modifying existing translations, follow these steps:

1. Fork the `tencent_chat_intl_tool` repository on GitHub: https://github.com/RoleWong/tencent_chat_intl_tool

2. Clone your forked repository to your local machine.

3. Add the local path of your forked repository to your project's `pubspec.yaml` file using `dependency_overrides`:

   ```yaml
   dependency_overrides:
     tencent_chat_intl_tool:
       path: /path/to/your/forked/repository
   ```

4. Run the following command in your project directory:

   ```sh
   dart run tencent_chat_intl_tool
   ```

   This script will guide you through the process of customizing internationalization, including adding new language entries and modifying existing translations.

### Adding New Language Entries

1. Add the new language entries in JSON format to the `new_language_entries.txt` file in your project's root directory. Make sure to follow the Flutter intl syntax standard. You can refer to the official documentation at https://docs.flutter.dev/ui/accessibility-and-localization/internationalization#adding-your-own-localized-messages.

2. Run the `dart run tencent_chat_intl_tool` command and select option `A` to add the new entries to the existing ARB files.

### Modifying Existing Translations

1. Run the `dart run tencent_chat_intl_tool` command and select option `B` to copy the built-in language entries (ARB files) to your project directory.

2. Modify the ARB files in the `languages` directory according to your needs.

3. Run the `dart run tencent_chat_intl_tool` command and select option `C` to apply your changes.

## License

This project is licensed under the [MIT License](LICENSE).