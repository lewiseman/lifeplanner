import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life/pages/home/home.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyFuckingLife(),
    ),
  );
}

class MyFuckingLife extends StatelessWidget {
  const MyFuckingLife({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Fucking Life',
      initialRoute: '/',
      onGenerateRoute: routes,
      theme: theme(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              repeat: ImageRepeat.repeat,
              colorFilter: ColorFilter.mode(
                Color.fromARGB(244, 11, 1, 12),
                BlendMode.srcATop,
              ),
            ),
          ),
          child: child,
        );
      },
    );
  }
}

Route<dynamic>? routes(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) => const HomePage(),
  );
}

ThemeData theme() {
  return ThemeData.dark().copyWith();
}
