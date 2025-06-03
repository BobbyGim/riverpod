import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

@riverpod
String gState(Ref ref) {
  return 'Hello, Code Generation!';
}

@riverpod
Future<int> gFutureState(Ref ref) async {
  await Future.delayed(const Duration(seconds: 2));

  return 42;
}

@Riverpod(keepAlive: true)
Future<int> gFutureState2(Ref ref) async {
  await Future.delayed(const Duration(seconds: 2));

  return 10;
}

@riverpod
int gStateMultiply(Ref ref, {required int num1, required int num2}) {
  return num1 * num2;
}

@riverpod
class GStateNotifier extends _$GStateNotifier {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
