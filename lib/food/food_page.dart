import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'text.dart';
//import 'package:scroll_to_index/scroll_to_index.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('シンガポールの食文化'),
        backgroundColor: Color.fromARGB(238, 252, 235, 254),
      ),
      body: Scrollbar(
          thumbVisibility: true,
          thickness: 10,
          radius: Radius.circular(16),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(238, 252, 235, 254),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  width: 340,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "目次",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const Text(
                        "1.多民族ならではの食文化",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const Text(
                        "2.主食",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const Text(
                        "3.麺の種類が多い",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const Text(
                        "4.行事食",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black)),
                  padding: const EdgeInsets.all(8.0),
                  width: 500,
                  margin: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '関連記事:',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                        TextSpan(
                          text: 'シンガポール共和国｜比べてみよう！世界の食と文化',
                          style: TextStyle(color: Colors.lightBlue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch(
                                  'https://www.meiji.co.jp/meiji-shokuiku/worldculture/singapore/');
                            },
                        ),
                      ],
                    ),
                  )),
              const FoodListView(),
            ]),
          )),
    );
  }
}

class FoodText extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const FoodText({
    required this.title,
    required this.description,
    required this.imageUrl,
    //super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FoodTitleText(title),
          FoodDescriptionText(description),
          FoodUrl(imageUrl),
        ],
      ),
    );
  }
}

//一覧表示
class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2100,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: Foods.length,
        itemBuilder: (context, index) {
          final Food = Foods[index];
          return Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: FoodText(
              title: Food.title,
              imageUrl: Food.ImageUrl,
              description: Food.description,
            ),
          );
        },
      ),
    );
  }
}

//　Foodのタイトルに使うテキスト
class FoodTitleText extends StatelessWidget {
  final String title;
  const FoodTitleText(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(238, 252, 235, 254),
      ),
      padding: const EdgeInsets.all(8.0),
      width: 500,
      margin: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

//　Foodの説明に使うテキスト
class FoodDescriptionText extends StatelessWidget {
  final String description;
  const FoodDescriptionText(this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.start,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}

class FoodUrl extends StatelessWidget {
  final String imageUrl;
  const FoodUrl(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
