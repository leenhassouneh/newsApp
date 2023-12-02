
import 'package:api_example/screens/home.dart';

import 'package:api_example/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/home_cubit.dart';

void main()async {


  //HttpHelper.LoginUserFromApi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>HomeCubit() ,),
      ],

      child: BlocConsumer<HomeCubit,HomeState>(
        listener: (context, state) {

        },
        builder: (context, state) {
         HomeCubit homeCubit = HomeCubit.get(context);
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           title: 'Flutter Demo',
           theme:homeCubit.isDark?MyTheme.darkTheme:MyTheme.lightTheme,

          home: const Home(),
        //  home: const Food(),
         );
        },
      ),
    );
  }
}

