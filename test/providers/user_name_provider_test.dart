import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_global/features/profile/presentation/providers/user_name_provider.dart';

import '../test_helpers.dart';

void main() {
  group('UserNameProvider', () {
    setUp(() async {
      await setupTestEnvironment(initialPrefs: {});
    });

    test('initial state is null when no name stored', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final value = await container.read(userNameProvider.future);
      expect(value, isNull);
    });

    test('setName stores and emits name', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      await container.read(userNameProvider.notifier).setName('Ash');
      final value = await container.read(userNameProvider.future);

      expect(value, 'Ash');
    });

    test('setName with empty removes and emits null', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      await container.read(userNameProvider.notifier).setName('Misty');
      expect(await container.read(userNameProvider.future), 'Misty');

      await container.read(userNameProvider.notifier).setName('');
      final value = await container.read(userNameProvider.future);
      expect(value, isNull);
    });
  });
}
