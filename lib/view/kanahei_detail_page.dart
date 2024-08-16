// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_kanahei/model/kanahei_data.dart';
import 'package:flutter_kanahei/view_model/kanahei_viewmodel.dart';

class KanaheiDetailPage extends StatelessWidget {
  final KanaheiData data;
  final KanaheiViewModel viewModel;

  const KanaheiDetailPage({
    required this.data,
    required this.viewModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final double imageSize = MediaQuery.of(context).size.width - 32;

    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                viewModel.getImagePath(data.imageName),
                width: imageSize,
                height: imageSize,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '${data.name}',
              style: textTheme.headlineLarge, // 使用 headline6 樣式
            ),
            SizedBox(height: 8.0),
            Text(
              '${data.jpname}',
              style: textTheme.titleMedium, // 使用 subtitle1 樣式
            ),
            SizedBox(height: 8.0),
            Text(
              '${data.personality}',
              style: textTheme.bodyMedium, // 使用 bodyText1 樣式
            ),
          ],
        ),
      ),
    );
  }
}
