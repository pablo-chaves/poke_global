import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_global/core/providers/shared_preferences_provider.dart';
import 'package:poke_global/core/theme/app_theme.dart';
import 'core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final container = ProviderContainer();
  final prefs = await container.read(sharedPreferencesProvider.future);
  container.dispose();
  final name = prefs.getString('user_name');
  final hasName = name != null && name.isNotEmpty;

  runApp(ProviderScope(child: PokeGlobal(hasName: hasName)));
}

class PokeGlobal extends StatelessWidget {
  final bool hasName;
  const PokeGlobal({super.key, required this.hasName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.getRouter(hasName: hasName),
      title: 'PokeGlobal',
      theme: AppTheme.lightTheme,
      builder: (BuildContext context, Widget? child) {
        final media = MediaQuery.of(context);
        final clampedScale = media.textScaleFactor.clamp(0.8, 1.2).toDouble();
        return MediaQuery(
          data: media.copyWith(textScaleFactor: clampedScale),
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
