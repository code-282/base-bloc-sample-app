import 'package:base_bloc_sample_app/base/bloc/base_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;

  const BaseScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: BlocProvider(
        create: (context) => BaseBloc(),
        child: BlocBuilder<BaseBloc, BaseState>(
          builder: (context, state) {
            if (state is PreprocessedBaseState) {
              return Column(
                children: [
                  child,
                  const Text("preprocessing"),
                ],
              );
            } else if (state is PostprocessedBaseState) {
              return Column(
                children: [
                  child,
                  const Text("processed"),
                ],
              );
            }
            return child;
          },
        ),
      ),
    );
  }
}
