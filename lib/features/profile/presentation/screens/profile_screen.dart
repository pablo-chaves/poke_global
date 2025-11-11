import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/core/routes/route_names.dart';
import 'package:poke_global/features/profile/presentation/providers/user_name_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameAsync = ref.watch(userNameProvider);

    return SafeArea(
      child: Padding(
        padding: AppSpacing.paddingHorizontalMD,
        child: SizedBox(
          width: double.infinity,
          child: nameAsync.when(
            data: (name) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name == null || name.isEmpty
                        ? 'Hola, Entrenador/a'
                        : 'Hola, $name',
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  AppSpacing.verticalSpaceSM,
                  Text(
                    name == null || name.isEmpty
                        ? 'Completa tu perfil para personalizar tu experiencia.'
                        : 'Este es tu perfil.',
                    textAlign: TextAlign.center,
                  ),
                  AppSpacing.verticalSpaceLG,
                  FilledButton(
                    onPressed: () => context.push(RouteNames.askName),
                    child: const Text('Editar nombre'),
                  ),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('No se pudo cargar tu perfil'),
                AppSpacing.verticalSpaceSM,
                FilledButton(
                  onPressed: () => ref.read(userNameProvider.notifier).setName(null),
                  child: const Text('Reintentar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
