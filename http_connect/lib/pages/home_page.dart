import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String str =
      '{ \"page\":1, \"notification\":[ { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70784-1.php\", \"info\":{ \"id\":\"1\", \"title\":\"【公告】停課公告108/05/02_四通四甲- 延伸通識(人文)-世界音樂與多元文化_林世凌老師\", \"department\":\"通識中心\", \"date\":\"2019-05-01 \" } }, { \"link\":\"http://kuasnews.kuas.edu.tw/files/13-1018-70783-1.php\", \"info\":{ \"id\":\"2\", \"title\":\"國立高雄科技大學觀光管理系 徵求專案教師\", \"department\":\"觀光系\", \"date\":\"2019-04-18 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70782-1.php\", \"info\":{ \"id\":\"3\", \"title\":\"【第21屆優質通識學生學習檔案e化獲獎名單公告】\", \"department\":\"通識中心\", \"date\":\"2019-04-15 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70780-1.php\", \"info\":{ \"id\":\"4\", \"title\":\"【公告】停課公告108/05/01_四通一甲- 核心(二)生命與倫理_李翠花老師\", \"department\":\"通識中心\", \"date\":\"2019-04-10 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70779-1.php\", \"info\":{ \"id\":\"5\", \"title\":\"【公告】教室異動及補課時間108/04/17_ 四通一甲-核心(二)生命與倫理-李翠花老師\", \"department\":\"通識中心\", \"date\":\"2019-04-10 \" } }, { \"link\":\"http://www.lc.kuas.edu.tw/modules/tadnews/index.php?nsn=277\", \"info\":{ \"id\":\"6\", \"title\":\"[重要]107-2英語能力訓練課程期中考通知\", \"department\":\"語文中心\", \"date\":\"2019-04-01 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70774-1.php\", \"info\":{ \"id\":\"7\", \"title\":\"【公告】教室異動 星期五5-8節 四通四甲\", \"department\":\"通識中心\", \"date\":\"2019-03-26 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70773-1.php\", \"info\":{ \"id\":\"8\", \"title\":\"【公告】教室異動108/03/22_核心通識(三)-現今科技議題-曾衍彰老師\", \"department\":\"通識中心\", \"date\":\"2019-03-22 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70771-1.php\", \"info\":{ \"id\":\"9\", \"title\":\"【公告】教室異動108/03/21_核心通識(二)-社會學與當代社會 _許朝瑛老師\", \"department\":\"通識中心\", \"date\":\"2019-03-19 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70770-1.php\", \"info\":{ \"id\":\"10\", \"title\":\"【公告】教室異動108/03/20(三)_博雅(歷史)先哲管理思維 _陳立驤老師\", \"department\":\"通識中心\", \"date\":\"2019-03-19 \" } }, { \"link\":\"http://kuasnews.kuas.edu.tw/files/13-1018-70766-1.php\", \"info\":{ \"id\":\"11\", \"title\":\"2019年高科大 高雄亮點日語導覽競賽\", \"department\":\"觀光系\", \"date\":\"2019-03-13 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70765-1.php\", \"info\":{ \"id\":\"12\", \"title\":\"快來拿獎金!!!第22屆優質通識課程學生學習檔案e化徵選活動~\", \"department\":\"通識中心\", \"date\":\"2019-03-13 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70764-1.php\", \"info\":{ \"id\":\"13\", \"title\":\"【公告】教室異動108/03/15核心(三)創意與創新 陳建志老師\", \"department\":\"通識中心\", \"date\":\"2019-03-12 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70763-1.php\", \"info\":{ \"id\":\"14\", \"title\":\"【公告】教室異動108/03/14核心通識(一)-藝術創造力導論、延伸通識(人文)-世界音樂與多元文化林世凌老師\", \"department\":\"通識中心\", \"date\":\"2019-03-12 \" } }, { \"link\":\"http://kuasnews.kuas.edu.tw/files/13-1018-70762-1.php\", \"info\":{ \"id\":\"15\", \"title\":\"賀!!陳錦泰教授指導四機三乙班學生戴宇辰、林育安、羅濟緯參加「經濟部 iPAS 產業人才能力鑑定考試」榮獲「3D列印工程師初級能力鑑定」通過證書。\", \"department\":\"機械系\", \"date\":\"2019-03-11 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70755-1.php\", \"info\":{ \"id\":\"16\", \"title\":\"【公告】教室異動 核心(二)生命與倫理 黃潔莉老師\", \"department\":\"通識中心\", \"date\":\"2019-03-05 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70753-1.php\", \"info\":{ \"id\":\"17\", \"title\":\"【公告】教室異動 核心(一)海洋文明發展 賴盟騏老師\", \"department\":\"通識中心\", \"date\":\"2019-03-04 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70752-1.php\", \"info\":{ \"id\":\"18\", \"title\":\"「延伸通識(人文)-自主學習專題」，讓你創造專屬自己的課程！！！歡迎你踴躍加選！\", \"department\":\"通識中心\", \"date\":\"2019-03-04 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70751-1.php\", \"info\":{ \"id\":\"19\", \"title\":\"【公告】燕巢校區博雅教育中心補選(補救)課程時間\", \"department\":\"通識中心\", \"date\":\"2019-03-04 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70750-1.php\", \"info\":{ \"id\":\"20\", \"title\":\"!!!【注意】四通四甲「大學入門」非通識課程，請同學勿誤選此課程\", \"department\":\"通識中心\", \"date\":\"2019-03-04 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70749-1.php\", \"info\":{ \"id\":\"21\", \"title\":\"【公告】停課公告 108/3/6(三) 3-4,7-8節 通識課程-曾衍彰老師\", \"department\":\"通識中心\", \"date\":\"2019-02-27 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70748-1.php\", \"info\":{ \"id\":\"22\", \"title\":\"【公告】教室異動 核心通識(四)-近代西方文明史 劉宗智老師\", \"department\":\"通識中心\", \"date\":\"2019-02-27 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70744-1.php\", \"info\":{ \"id\":\"23\", \"title\":\"【公告】教室異動 核心��������������識(二)-管理與知識經濟 蔡淑媛���������師\", \"department\":\"通識中心\", \"date\":\"2019-02-26 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70738-1.php\", \"info\":{ \"id\":\"24\", \"title\":\"【公告】教室異動 核心通識(三)-諾貝爾科學桂冠 林銘福老師\", \"department\":\"通識中心\", \"date\":\"2019-02-25 \" } }, { \"link\":\"http://gec.kuas.edu.tw/files/13-1012-70742-1.php\", \"info\":{ \"id\":\"25\", \"title\":\"【公告】教室異動 核心通識(二)-社會學與當代社會、延伸通識(社會)-婚姻與家庭 蔡昭民老師\", \"department\":\"通識中心\", \"date\":\"2019-02-22 \" } } ] }';
  Map<String, dynamic> json;

  @override
  void initState() {
    json = jsonDecode(str);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('最新消息'),
      ),
      body: ListView(children: _renderWidgets()),
    );
  }

  List<Widget> _renderWidgets() {
    List<Widget> widgets = [];
    for (var i in json['notification']) {
      widgets.add(_notification(i));
    }
    return widgets;
  }

  Widget _notification(Map<String, dynamic> notification) {
    return Column(
      children: <Widget>[
        SizedBox(height: 4),
        Padding(
          child: Text(
            '${notification['info']['title']}'
            'http://bit.ly/2H9Lcvr ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: EdgeInsets.all(8),
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 8),
            Expanded(
              child: Text(
                '${notification['info']['department']}',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              '${notification['info']['date']}',
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
              ),
            ),
            SizedBox(width: 8),
          ],
        ),
        SizedBox(height: 8),
        Container(
          color: Colors.grey,
          height: 0.5,
        ),
      ],
    );
  }
}