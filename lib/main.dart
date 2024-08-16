import 'package:flutter/material.dart';
import 'package:flutter_kanahei/view/kanahei_grid_view.dart';
import 'package:flutter_kanahei/view_model/kanahei_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = KanaheiViewModel();

    return MaterialApp(
      title: 'Kanahei App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('卡娜赫拉的小動物們'),
        ),
        body: KanaheiGridView(viewModel: viewModel),
      ),
    );
  }
}