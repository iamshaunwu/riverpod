// ignore_for_file: omit_local_variable_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'reading_counter.dart';

/* SNIPPET START */

final counterProvider = StateNotifierProvider<Counter, int>((ref) => Counter(ref));

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 调回 Counter 类里的 `increment()` 函数
          ref.read(counterProvider.notifier).increment();
        },
      ),
    );
  }
}
