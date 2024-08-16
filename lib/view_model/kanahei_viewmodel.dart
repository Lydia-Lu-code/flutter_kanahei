// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_kanahei/model/kanahei_data.dart';

class KanaheiViewModel {
  final List<KanaheiData> _allData = KanaheiData.allData; // 設置為靜態數據
  KanaheiData _selectedData;

  // 使用 ValueNotifier 來更新 UI
  ValueNotifier<String> textNotifier = ValueNotifier<String>('粉紅兔兔');
  ValueNotifier<String> imageNotifier = ValueNotifier<String>('assets/usagi.png'); // 預設為粉紅兔兔的圖片

  String getImagePath(String imageName) {
    // 返回圖片的路徑
    return 'assets/$imageName.png';
  }

  KanaheiViewModel()
      : _selectedData = KanaheiData.allData.firstWhere(
          (data) => data.jpname == 'Usagi',
          orElse: () => KanaheiData(
            name: '粉紅兔兔',
            jpname: 'Usagi',
            personality: '活潑可愛',
            imageName: 'usagi',
          ),
        );

  List<KanaheiData> get allData => _allData;
  KanaheiData get selectedData => _selectedData;

  void selectData(String name) {
    _selectedData = _allData.firstWhere((data) => data.name == name);
    textNotifier.value = _selectedData.name; // 更新文字
    imageNotifier.value = getBackgroundImage(_selectedData.jpname); // 更新圖片
  }

  void updateText(String newText) {
    textNotifier.value = newText;
  }

  String getBackgroundImage(String jpname) {
    // 根據角色日文名稱返回圖片路徑
    switch (jpname) {
      case 'Usagi':
        return 'assets/usagi.png';
      case 'Pisuke':
        return 'assets/pisuke.png';
      case 'Zombie Neko':
        return 'assets/zombie_neko.png';
      case 'ne-ne-neko':
        return 'assets/ne_ne_neko.png';
      case 'Komimizuk':
        return 'assets/komimizuk.png';
      default:
        return 'assets/default.png'; // 默認圖片
    }
  }
}
