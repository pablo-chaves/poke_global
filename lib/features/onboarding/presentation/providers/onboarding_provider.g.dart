// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OnboardingCompleted)
const onboardingCompletedProvider = OnboardingCompletedProvider._();

final class OnboardingCompletedProvider
    extends $AsyncNotifierProvider<OnboardingCompleted, bool> {
  const OnboardingCompletedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onboardingCompletedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onboardingCompletedHash();

  @$internal
  @override
  OnboardingCompleted create() => OnboardingCompleted();
}

String _$onboardingCompletedHash() =>
    r'14c18e34c4de0c14fbbc96f29ae33759b64457f2';

abstract class _$OnboardingCompleted extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
