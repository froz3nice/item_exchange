import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../profile/CounterEvent.dart';

class BookingsPage extends StatelessWidget {
  BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.current.Bookings,
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
            return Text(state.counter.toString());
          })
        ],
      ),
    );
  }
}
