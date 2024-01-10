import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

abstract class BasePageState<T extends StatefulWidget, B extends Bloc>
    extends State<T> {
  late final B bloc;
  @override
  void initState() {
    super.initState();
    bloc = GetIt.instance.get<B>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: this.buildPage(context),
    );
  }

  Widget buildPage(BuildContext context);
}
