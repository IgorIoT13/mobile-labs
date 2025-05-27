import 'package:flutter/material.dart';

import 'package:labwork/widgets/adaptive/dynamic_bloc.dart';
import 'package:labwork/widgets/device_block.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: DynamicBlock(
            children: List.generate(20, (i) => DeviceBlock()),
            initialVisibleCount: 5,
            loadMoreCount: 5,
          ),
        ),
      ),
    );
  }
}
