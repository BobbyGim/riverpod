// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gStateHash() => r'b9096bb1469e58c751d7da4bb145b8281e43bb92';

/// See also [gState].
@ProviderFor(gState)
final gStateProvider = AutoDisposeProvider<String>.internal(
  gState,
  name: r'gStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GStateRef = AutoDisposeProviderRef<String>;
String _$gFutureStateHash() => r'f849aa99361a06a29d21ee6581bce55e40b8831b';

/// See also [gFutureState].
@ProviderFor(gFutureState)
final gFutureStateProvider = AutoDisposeFutureProvider<int>.internal(
  gFutureState,
  name: r'gFutureStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gFutureStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GFutureStateRef = AutoDisposeFutureProviderRef<int>;
String _$gFutureState2Hash() => r'ba65da9624ea589ae1c6835705eb43ee26d7cd63';

/// See also [gFutureState2].
@ProviderFor(gFutureState2)
final gFutureState2Provider = FutureProvider<int>.internal(
  gFutureState2,
  name: r'gFutureState2Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gFutureState2Hash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GFutureState2Ref = FutureProviderRef<int>;
String _$gStateMultiplyHash() => r'57ca7cde5217885e7c783d3b54a7da5a2cb02295';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [gStateMultiply].
@ProviderFor(gStateMultiply)
const gStateMultiplyProvider = GStateMultiplyFamily();

/// See also [gStateMultiply].
class GStateMultiplyFamily extends Family<int> {
  /// See also [gStateMultiply].
  const GStateMultiplyFamily();

  /// See also [gStateMultiply].
  GStateMultiplyProvider call({required int num1, required int num2}) {
    return GStateMultiplyProvider(num1: num1, num2: num2);
  }

  @override
  GStateMultiplyProvider getProviderOverride(
    covariant GStateMultiplyProvider provider,
  ) {
    return call(num1: provider.num1, num2: provider.num2);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'gStateMultiplyProvider';
}

/// See also [gStateMultiply].
class GStateMultiplyProvider extends AutoDisposeProvider<int> {
  /// See also [gStateMultiply].
  GStateMultiplyProvider({required int num1, required int num2})
    : this._internal(
        (ref) =>
            gStateMultiply(ref as GStateMultiplyRef, num1: num1, num2: num2),
        from: gStateMultiplyProvider,
        name: r'gStateMultiplyProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$gStateMultiplyHash,
        dependencies: GStateMultiplyFamily._dependencies,
        allTransitiveDependencies:
            GStateMultiplyFamily._allTransitiveDependencies,
        num1: num1,
        num2: num2,
      );

  GStateMultiplyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.num1,
    required this.num2,
  }) : super.internal();

  final int num1;
  final int num2;

  @override
  Override overrideWith(int Function(GStateMultiplyRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: GStateMultiplyProvider._internal(
        (ref) => create(ref as GStateMultiplyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        num1: num1,
        num2: num2,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<int> createElement() {
    return _GStateMultiplyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GStateMultiplyProvider &&
        other.num1 == num1 &&
        other.num2 == num2;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, num1.hashCode);
    hash = _SystemHash.combine(hash, num2.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GStateMultiplyRef on AutoDisposeProviderRef<int> {
  /// The parameter `num1` of this provider.
  int get num1;

  /// The parameter `num2` of this provider.
  int get num2;
}

class _GStateMultiplyProviderElement extends AutoDisposeProviderElement<int>
    with GStateMultiplyRef {
  _GStateMultiplyProviderElement(super.provider);

  @override
  int get num1 => (origin as GStateMultiplyProvider).num1;
  @override
  int get num2 => (origin as GStateMultiplyProvider).num2;
}

String _$gStateNotifierHash() => r'087428ce1ade0f46619cfb456214b31630eef4f3';

/// See also [GStateNotifier].
@ProviderFor(GStateNotifier)
final gStateNotifierProvider =
    AutoDisposeNotifierProvider<GStateNotifier, int>.internal(
      GStateNotifier.new,
      name: r'gStateNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$gStateNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$GStateNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
