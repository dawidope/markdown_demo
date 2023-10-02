import 'package:flutter/material.dart';
import 'package:markdown_demo/flutter_markdown/lib/flutter_markdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Center(
        child: Container(
          width: 100,
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MarkdownBody(
              data: '```\nBBBBBBBBBBBBBB\nDDD\nDDDD\n```',
              styleSheet: MarkdownStyleSheet(
                code: const TextStyle(backgroundColor: Colors.black, color: Colors.white),
                codeblockPadding: const EdgeInsets.all(5),
                codeblockDecoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
