import 'package:eldlich_golden_lord/app/themes/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';

import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(
            480,
            name: MOBILE,
          ),
          const ResponsiveBreakpoint.autoScale(
            800,
            name: TABLET,
          ),
          const ResponsiveBreakpoint.resize(
            1000,
            name: DESKTOP,
          ),
        ],
        background: Container(
          color: const Color(0xFFF5F5F5),
        ),
      ),
      title: "Application",
      theme: lightTheme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('id'),
      ],
      locale: const Locale('id'),
    ),
  );
}
