import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(PokeGlobal());
}

class PokeGlobal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final light = ThemeData(
      brightness: Brightness.light,
      // colorScheme: const ColorScheme.light(
      //   primary: Color(0xFF00D1B2),
      //   secondary: Color(0xFF7C4DFF),
      // ),
      // scaffoldBackgroundColor: const Color(0xFF0F1115),
      useMaterial3: true,
    );

    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'PokeGlobal',
      // supportedLocales: const [
      //   Locale('es'),
      // ],
      // debugShowCheckedModeBanner: false,
      theme: light,
    );
  }
}
