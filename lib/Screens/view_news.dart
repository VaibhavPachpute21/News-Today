// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newstoday/Services/Models/NewsModel.dart';

class ShowNews extends StatefulWidget {
  final Article news;
  const ShowNews({Key? key, required this.news}) : super(key: key);

  @override
  _ShowNewsState createState() => _ShowNewsState();
}

class _ShowNewsState extends State<ShowNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(

                children: [
                  Text(
                    widget.news.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(widget.news.source.name.toString(),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        widget.news.publishedAt.toString().split(" ").first,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(
            height: 5,
          ),
          widget.news.urlToImage != null
              ? Container(
                padding: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(widget.news.urlToImage.toString())))
              : SizedBox(),
          SizedBox(
            height: 5,
          ),
          Container(
              padding: EdgeInsets.all(5),
              color: Colors.grey.shade100,
              child: Column(
                children: [
                  Text(                    
                    widget.news.description.toString(),
                     maxLines: 100,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                widget.news.content != null
                    ? widget.news.content.toString()
                    : "",
                    maxLines: 100,
                style: TextStyle(color: Colors.black, fontSize: 18),
              )
                ],
              )),
        
        ],
      ),
    );
  }
}
