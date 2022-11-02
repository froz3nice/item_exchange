import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden_pro/home.dart';
import 'package:garden_pro/profile/ProfileCubit.dart';
import 'package:garden_pro/profile/profile.dart';
import 'package:garden_pro/routers/router_cubit.dart';
import 'app.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';
import 'routers/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => RouterCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => CounterBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Item Exchange',
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        onGenerateRoute: MyRouter.generateRoute,
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(child: App()),
      ),
    );
  }
}
