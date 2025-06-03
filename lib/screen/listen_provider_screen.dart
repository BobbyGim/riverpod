import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/riverpod/listen_provider.dart';

class ListenProviderScreen extends ConsumerStatefulWidget {
  const ListenProviderScreen({super.key});

  @override
  ConsumerState<ListenProviderScreen> createState() =>
      _ListenProviderScreenState();
}

class _ListenProviderScreenState extends ConsumerState<ListenProviderScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 11,
      vsync: this,
      initialIndex: ref.read(listenProvider),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<int>(listenProvider, (previous, next) {
      print("Previous: $previous, Next: $next");
      if (previous != next) {
        _tabController.animateTo(next);
      }
    });

    return DefaultLayout(
      title: "ListenProvider",
      child: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          11,
          (index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$index"),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(listenProvider.notifier)
                      .update((state) => state == 10 ? state : state + 1);
                  // ref.listen<int>(numberProvider, (previous, next) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(content: Text("Value changed: $next")),
                  //   );
                  // });
                },
                child: const Text("다음"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(listenProvider.notifier)
                      .update((state) => state == 0 ? state : state - 1);
                  // ref.listen<int>(numberProvider, (previous, next) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(content: Text("Value changed: $next")),
                  //   );
                  // });
                },
                child: const Text("뒤로"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
