import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'reading_counter.dart';

/* SNIPPET START */

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 使用 `ref` 去监听 provider
    final counter = ref.watch(counterProvider);
    return Text('$counter');
  }
}
