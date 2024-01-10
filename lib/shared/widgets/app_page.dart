import 'package:app/common/widgets/common_container.dart';
import 'package:flutter/material.dart';

class AppPage extends StatefulWidget {
  const AppPage({
    super.key,
    required this.title,
    required this.body,
    this.appbarActions = const [],
    this.scrollable = false,
    this.onRefresh,
  });

  final Widget title;
  final Widget body;
  final List<Widget> appbarActions;
  final bool scrollable;
  final Future<void> Function()? onRefresh;

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final ScrollController scrollController = ScrollController();
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget innerBody = CommonContainer(
        elevation: 0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Material(
          elevation: 1,
          child: widget.body,
        ));
    if (widget.onRefresh != null && !widget.scrollable) {
      innerBody = RefreshIndicator(
        onRefresh: widget.onRefresh!,
        child: innerBody,
      );
    }
    if (widget.scrollable) {
      Widget scrollView = NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: widget.title,
            automaticallyImplyLeading: true,
            actions: widget.appbarActions,
            floating: true,
            pinned: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
        ],
        body: innerBody,
      );
      if (widget.onRefresh != null) {
        scrollView = RefreshIndicator(
          onRefresh: widget.onRefresh!,
          child: scrollView,
        );
      }
      return SafeArea(
        child: Scaffold(
          body: scrollView,
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: widget.title,
          automaticallyImplyLeading: true,
          actions: widget.appbarActions,
          elevation: 0.0,
        ),
        body: innerBody,
      );
    }
  }
}
