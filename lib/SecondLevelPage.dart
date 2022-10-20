import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden_pro/profile/ProfileCubit.dart';

class SecondLevelPage extends StatefulWidget {
  SecondLevelPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SecondLevel createState() => _SecondLevel();
}

class _SecondLevel extends State<SecondLevelPage> {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(
              child: Text("push me"),
              onPressed: () {
                counterBloc.add(CounterEvent());
              },
            ),
            BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(state.counter.toString());
                }
            )
          ],
        ));
  }
}
