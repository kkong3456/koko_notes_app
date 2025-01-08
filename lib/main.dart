import 'package:flutter/material.dart';
import 'package:koko_notes_app/models/note_database.dart';
import 'package:koko_notes_app/pages/notes_page.dart';
import 'package:koko_notes_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();

  // runApp(
  //   ChangeNotifierProvider(
  //     create: (_) => NoteDatabase(),
  //     child: const MyApp(),
  //   ),
  // );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NoteDatabase()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: context.read<ThemeProvider>().themeData,
      home: NotesPage(),
    );
  }
}
