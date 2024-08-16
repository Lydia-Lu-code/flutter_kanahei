// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_kanahei/view/kanahei_detail_page.dart';
import 'package:flutter_kanahei/view_model/kanahei_viewmodel.dart';

class KanaheiGridView extends StatelessWidget {
  final KanaheiViewModel viewModel;

  const KanaheiGridView({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    final double imageSize = MediaQuery.of(context).size.width - 16;

    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: viewModel.allData.map((data) {
              return ValueListenableBuilder<String>(
                valueListenable: viewModel.textNotifier,
                builder: (context, selectedName, child) {
                  final bool isSelected = selectedName == data.name;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Column(
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: isSelected ? Colors.blue : Colors.transparent,
                              width: 2.0,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 24.0),
                          ),
                          onPressed: () {
                            viewModel.selectData(data.name);
                          },
                          child: Text(
                            data.name,
                            style: TextStyle(
                              fontSize: 16,
                              color: isSelected ? Colors.blue : Colors.black,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Divider(height: 1.0, color: Colors.grey),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 8.0),
        ValueListenableBuilder<String>(
          valueListenable: viewModel.textNotifier,
          builder: (context, text, child) {
            return Text(
              text,
              style: const TextStyle(fontSize: 28),
            );
          },
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => KanaheiDetailPage(
                          data: viewModel.selectedData,
                          viewModel: viewModel,
                        ),
                      ),
                    );
                  },
                  child: ValueListenableBuilder<String>(
                    valueListenable: viewModel.imageNotifier,
                    builder: (context, imagePath, child) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          imagePath,
                          width: imageSize,
                          height: imageSize,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

