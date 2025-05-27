import 'package:flutter/material.dart';

class DynamicBloc extends StatefulWidget {
  final List<Widget> children;
  final int initialVisibleCount;
  final int loadMoreCount;

  const DynamicBloc({
    Key? key,
    required this.children,
    this.initialVisibleCount = 5,
    this.loadMoreCount = 5,
  }) : super(key: key);

  @override
  State<DynamicBloc> createState() => _DynamicBlocState();
}

class _DynamicBlocState extends State<DynamicBloc> {
  late int _visibleCount;

  @override
  void initState() {
    super.initState();
    _visibleCount = widget.initialVisibleCount;
  }

  void _loadMore() {
    setState(() {
      _visibleCount = (_visibleCount + widget.loadMoreCount).clamp(0, widget.children.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    final visibleChildren = widget.children.take(_visibleCount).toList();
    final hasMore = _visibleCount < widget.children.length;
    return Column(
      children: [
        ...visibleChildren,
        if (hasMore)
          TextButton(
            onPressed: _loadMore,
            child: const Text('Показати ще'),
          ),
      ],
    );
  }
}
