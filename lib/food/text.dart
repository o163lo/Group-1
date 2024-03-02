class Food {
  String title;
  String description;
  String ImageUrl;

  Food(
      {required this.title, required this.description, required this.ImageUrl});
}

List<Food> Foods = [
  Food(
      title: "1.多民族ならではの食文化",
      description:
          """多民族が暮くらすシンガポールでは、中国料理・インド料理・マレー料理の本格的な味を楽しめますが、マレー料理と中国料理が融合した「プラナカン料理（ニョニャ料理）」が伝統的な料理として有名です""",
      ImageUrl:
          "https://www.meiji.co.jp/meiji-shokuiku/worldculture/images/country/contents_image_singapore1_1_1.jpg"),
  Food(
      title: "2.主食",
      description: """シンガポールでの主食は米と麺で、日本とは違い細長いインディカ米が使われています""",
      ImageUrl: "https://cdn.sbfoods.co.jp/recipes/04283_l.jpg"),
  Food(
      title: "3.麺の種類が多い",
      description:
          """黄色くて丸い「ミー」とはば広い「ミーポック」、白くてはば広い「バンミエン」、はば広の米麺「クイティヤオ」、細い米麺「ビーフン」などたくさんあります。シンガポールの国民食ともいえる麺料理は「ワンタンミー」です。ワンタンミーは、スープありとスープなしがありますが、シンガポールではスープなしの麺にワンタンスープが別で出てくる食べ方が多いです""",
      ImageUrl:
          "https://cdn-ak.f.st-hatena.com/images/fotolife/l/lioncity/20180329/20180329173736.png"),
  Food(
      title: "4.行事食",
      description:
          """シンガポールのお正月は旧正月（チャイニーズ・ニューイヤー）といい、旧暦のお正月で毎年日にちが変わります。旧正月には、中華系の人たちは「魚生（ユーシェン）」というお刺身のサラダを食べる習慣があります。魚生はシンガポールで生まれた料理で、元々はサラダとして食べられていましたが、縁起のいい料理とされ、徐々に旧正月に食べる料理となりました""",
      ImageUrl:
          "https://www.meiji.co.jp/meiji-shokuiku/worldculture/images/country/contents_image_singapore1_4_1.jpg"),
];
