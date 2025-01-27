import 'package:flutter/material.dart';

class ScrollControllerProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final List<GlobalKey> keys = List.generate(5, (_) => GlobalKey());
  int selectedPageIndex = 0;

  ScrollControllerProvider() {
    scrollController.addListener(_onScroll);
  }

  void scrollToIndex(int index) {
    final context = keys[index].currentContext;
    if (context != null) {
      selectedPageIndex = index;
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    }
  }

  void _onScroll() {
    for (int i = 0; i < keys.length; i++) {
      final context = keys[i].currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);

        if (position.dy <= MediaQuery.of(context).padding.top + 100 && position.dy >= 0) {
          if (selectedPageIndex != i) {
            selectedPageIndex = i;
            notifyListeners();
          }
          break;
        }
      }
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.dispose();
  }
}
