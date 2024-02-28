// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerNotifierHash() => r'd9d6365a500735ee6ca079a76bf0182242ed0fbd';

/// See also [RouterNotifier].
@ProviderFor(RouterNotifier)
final routerNotifierProvider =
    AutoDisposeAsyncNotifierProvider<RouterNotifier, void>.internal(
  RouterNotifier.new,
  name: r'routerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$routerNotifierHash,
  dependencies: <ProviderOrFamily>[
    authNotifierProvider,
    sharedPreferencesNotifierProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    authNotifierProvider,
    ...?authNotifierProvider.allTransitiveDependencies,
    sharedPreferencesNotifierProvider,
    ...?sharedPreferencesNotifierProvider.allTransitiveDependencies
  },
);

typedef _$RouterNotifier = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
