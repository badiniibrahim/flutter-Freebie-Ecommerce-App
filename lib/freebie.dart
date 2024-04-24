import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'app/routes/app_pages.dart';

class Freebie extends StatelessWidget {
  final String initialRoute;

  const Freebie({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Freebie",
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("fr"),
      initialRoute: initialRoute,
      getPages: AppPages.routes,
    );
  }
}
