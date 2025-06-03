import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase provider,
    Object? value,
    ProviderContainer container,
  ) {
    print('Provider added: ${provider.name ?? provider.runtimeType}');
  }

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print(
      'Provider updated: ${provider.name ?? provider.runtimeType}, '
      'previous value: $previousValue, new value: $newValue',
    );
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    print('Provider disposed: ${provider.name ?? provider.runtimeType}');
  }
}
