import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:poke_global/core/providers/shared_preferences_provider.dart';

part 'onboarding_provider.g.dart';

@riverpod
class OnboardingCompleted extends _$OnboardingCompleted {
  static const _key = 'onboarding_completed';

  @override
  Future<bool> build() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    return prefs.getBool(_key) ?? false;
  }

  Future<void> setCompleted() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.setBool(_key, true);
    if (ref.mounted) {
      state = const AsyncValue.data(true);
    }
  }
}
