import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_name_provider.g.dart';

@riverpod
class UserName extends _$UserName {
  static const _key = 'user_name';

  @override
  Future<String?> build() async {
    state = const AsyncValue.loading();
    final prefs = await SharedPreferences.getInstance();
    if (!ref.mounted) return null;
    return prefs.getString(_key);
  }

  Future<void> setName(String? name) async {
    state = const AsyncValue.loading();
    final prefs = await SharedPreferences.getInstance();
    if (!ref.mounted) return;
    if (name == null || name.isEmpty) {
      await prefs.remove(_key);
      if (!ref.mounted) return;
      state = const AsyncValue.data(null);
    } else {
      await prefs.setString(_key, name);
      if (!ref.mounted) return;
      state = AsyncValue.data(name);
    }
  }
}
