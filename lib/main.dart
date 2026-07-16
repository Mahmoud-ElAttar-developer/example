import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:insight_news/Core/Functions/go_router.dart';
// import 'package:insight_news/Core/Themes/thems.dart';
// import 'package:insight_news/Feutres/News/cubit/news_cubit.dart';

Future<void> main() async {
  //   await Hive.initFlutter();
  //   // Hive.registerAdapter(TaskModelAdapter());
  //   // await Hive.openBox<TaskModel>('task');
  //   await Hive.openBox<bool>('mode');
  //   // await Hive.openBox('user');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
    // ValueListenableBuilder(
    //       valueListenable: Hive.box<bool>('mode').listenable(),
    //       builder: (BuildContext context, dynamic value, Widget? child) {
    //         bool isDark = value.get('isDark', defaultValue: false);
    //         return BlocProvider(
    //           create: (context) => NewsCubit(),
    // child:
    MaterialApp.router(
      //             darkTheme: darkTheme,
      //             themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      //             theme: lightTheme,
      //             debugShowCheckedModeBanner: false,
      //             routerConfig: router,
      //           ),
      //         );
      //       },
    );
  }
}
