import 'package:flutter/material.dart';
import 'package:guide/providers/models_provider.dart';
import 'package:guide/screens/chat_screen.dart';
import 'package:provider/provider.dart';
import 'constants/constants.dart';
import 'providers/chat_provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Guide Me',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            appBarTheme: AppBarTheme(
              color: cardColor,
            )),
        home: const ChatScreen(),
        //ChatScreen
        //SignInScreen()
      ),
    );
  }
}
