import 'package:flutter_riverpod/flutter_riverpod.dart';

final multipleStreamProvider = StreamProvider<List<int>>((ref) async* {
  await Future.delayed(const Duration(seconds: 2));

  for (int i = 0; i <= 9; i++) {
    await Future.delayed(const Duration(seconds: 1));

    yield List.generate(3, (index) => index * i);
  }
});
