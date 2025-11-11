// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_name_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserName)
const userNameProvider = UserNameProvider._();

final class UserNameProvider extends $AsyncNotifierProvider<UserName, String?> {
  const UserNameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userNameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userNameHash();

  @$internal
  @override
  UserName create() => UserName();
}

String _$userNameHash() => r'd510862e1d63f4f25fe50a144bf8a7ae1ac23fa7';

abstract class _$UserName extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
