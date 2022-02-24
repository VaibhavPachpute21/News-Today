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
              color: Colors.grey.shade300,
              child: Text(
                widget.news.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )),
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
          SizedBox(
            height: 5,
          ),
          widget.news.urlToImage!=null?
          Image.network(widget.news.urlToImage.toString()):SizedBox(),
          SizedBox(
            height: 5,
          ),
          Container(
              color: Colors.grey.shade100,
              child: Text(
                widget.news.description.toString(),
                style: TextStyle(color: Colors.black, fontSize: 18),
              )),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
              color: Colors.grey.shade100,
              child: Text(
                widget.news.content!=null?
                widget.news.content.toString():"Content not available",
                style: TextStyle(color: Colors.black, fontSize: 18),
              )),
        ],
      ),
    );
  }
}
