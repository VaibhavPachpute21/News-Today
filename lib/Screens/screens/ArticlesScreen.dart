import 'package:flutter/material.dart';
import 'package:newstoday/Screens/screens/view_news.dart';
import 'package:newstoday/globalData.dart' as global;

class NewsArticlesScreen extends StatefulWidget {
  const NewsArticlesScreen({ Key? key }) : super(key: key);

  @override
  _NewsArticlesScreenState createState() => _NewsArticlesScreenState();
}

class _NewsArticlesScreenState extends State<NewsArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: ListView.builder(
            padding: const EdgeInsets.all(1),
            itemCount: global.localLeadLines.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(1)),
                child: InkWell(
                  onTap: () {
                    var news=global.localLeadLines[index];
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowNews(news:news)) );
                  },
                  child: Column(
                    children: [
                      global.localLeadLines[index].urlToImage != null
                          ? SizedBox(
                              child: Image.network(
                                global.localLeadLines[index].urlToImage.toString(),
                              ),
                            )
                          : const SizedBox(),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: Text(
                              global.localLeadLines[index].title.toString(),
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis),
                              maxLines: 2,
                            ),
                          ),
                          Expanded(
                            //width: MediaQuery.of(context).size.width * 0.10,
                            //height: MediaQuery.of(context).size.height * 0.025,
                            child: IconButton(
                              icon: const Icon(
                                Icons.bookmark_border,
                                size: 20,
                              ),
                              tooltip: "Bookmark",
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            //width: MediaQuery.of(context).size.width * 0.10,
                           // height: MediaQuery.of(context).size.height * 0.025,
                            child: IconButton(
                              icon: const Icon(
                                Icons.share,
                                size: 20,
                              ),
                              tooltip: "Share",
                              onPressed: () {
                                // showBottomSheet();
                              },
                            ),
                          ),
                          Expanded(
                           // width: MediaQuery.of(context).size.width * 0.13,
                           // height: MediaQuery.of(context).size.height * 0.025,
                            child: IconButton(
                              icon: const Icon(
                                Icons.more_vert_rounded,
                                size: 20,
                              ),
                              tooltip: "more",
                              onPressed: () {
                                // showBottomSheet();
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  
  }
}