import 'package:flutter/material.dart';
import 'package:freebie/freebie.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  final String initialRoute = await Routes.INITIAL;
  runApp(Freebie(initialRoute: initialRoute));
}
