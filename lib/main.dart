
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
import 'cubits/main_view/main_view_cubit.dart';

void main() async {
  runApp(
       MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => MainViewCubit()),
          ],
          child: const MyApp()
      )
  );
}