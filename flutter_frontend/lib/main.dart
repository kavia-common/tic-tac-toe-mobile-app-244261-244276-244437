import 'package:flutter/material.dart';

void main() {
  runApp(const TicTacToeApp());
}

// PUBLIC_INTERFACE
class TicTacToeApp extends StatelessWidget {
  /// The root widget for the Tic Tac Toe app.
  const TicTacToeApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Light blue color for the app background (pleasant, bright, and subtle).
    // Chosen: #E3F2FD (Material Blue 50-like).
    const lightBlueBackground = Color(0xFFE3F2FD);
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          surface: lightBlueBackground,
          background: lightBlueBackground,
        ),
        scaffoldBackgroundColor: lightBlueBackground,
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      home: const MainGameScreen(),
    );
  }
}

// Placeholder widget for main game screen (since the real one is unknown)
class MainGameScreen extends StatelessWidget {
  const MainGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'),
      ),
      body: const Center(
        child: Text(
          'Tic Tac Toe Game Board Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
