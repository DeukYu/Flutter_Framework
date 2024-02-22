// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'a2b5fcea68648e98bf0bbfbb611714e356461a7f';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<AppRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: <ProviderOrFamily>[
    routerNotifierProvider,
    splashScreenInterceptorProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    routerNotifierProvider,
    ...?routerNotifierProvider.allTransitiveDependencies,
    splashScreenInterceptorProvider,
    ...?splashScreenInterceptorProvider.allTransitiveDependencies
  },
);

typedef RouterRef = AutoDisposeProviderRef<AppRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
