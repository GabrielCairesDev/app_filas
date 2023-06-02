import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fura_fila/providers/providers.dart';
import 'package:provider/provider.dart';
import 'api/api_service.dart';
import 'myapp.dart';

void main() {
  LicenseRegistry.addLicense(
    () async* {
      final license = await rootBundle.loadString('google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    },
  );

  runApp(
    MultiProvider(
      providers: AppProviders.providers,
      child: const MyApp(),
    ),
  );
  ApiService().fetchData();
}
