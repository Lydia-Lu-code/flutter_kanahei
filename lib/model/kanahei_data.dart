
class KanaheiData {
  final String name;
  final String jpname;
  final String personality;
  final String imageName; // 新增的圖片名稱參數


  const KanaheiData({
    required this.name,
    required this.jpname,
    required this.personality,
    required this.imageName, // 新增的圖片名稱參數
  }); 
  
  static const List<KanaheiData> allData = [
    KanaheiData(
      name: '粉紅兔兔', 
      jpname: 'Usagi', 
      personality: '喜歡跟P助再一起嬉鬧吵鬧的一隻粉紅兔兔，非常喜愛吃東西，常常做出無腦搞怪的行為，因此有時候玩過頭了甚至把P助惹生氣了。',
      imageName: 'usagi', // 圖片名稱
    ),
    KanaheiData(
      name: 'P助', 
      jpname: 'Pisuke', 
      personality: 'P助時常和粉紅兔兔在一起，基本兩個就像行影不離的家人，想法直接且單純，但總是帶著一個木訥面無表情木訥的臉，常因為粉紅兔兔的過度玩笑，而被惹的很生氣。',
      imageName: 'pisuke', // 圖片名稱
    ),
    KanaheiData(
      name: '殭屍貓', 
      jpname: 'Zombie Neko', 
      personality: '從墳墓復活的殭屍貓，但附近居民非常愛護殭屍貓一點也不害怕，身為殭屍貓非常清楚自己的任務，所以平時也會看著電視裡的殭屍學習如何殭屍跳。',
      imageName: 'zombie_neko', // 圖片名稱
    ),
    KanaheiData(
      name: '喵喵貓', 
      jpname: 'ne-ne-neko', 
      personality: '每次講話結尾都要加上ね(捏) 這個字，捏捏捏叫個不停是一隻觸感柔軟滑順有著慵懶身軀和尾巴的貓咪，和其他小動物角色感情都很和睦，經常一起結伴行動，是個和平、正向的象徵角色。',
      imageName: 'ne_ne_neko', // 圖片名稱
    ),
    KanaheiData(
      name: '短耳貓頭鷹', 
      jpname: 'Komimizuk', 
      personality: '一隻優游在森林中的貓頭鷹，與他的水邊野生生物八卦生活大小事，喜歡打聽小道消息，但也是非常重視環保的一隻短耳貓頭鷹。',
      imageName: 'komimizuk', // 圖片名稱
    ),
  ];
}

