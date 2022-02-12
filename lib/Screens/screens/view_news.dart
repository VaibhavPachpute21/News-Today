// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newstoday/Services/Models/NewsModel.dart';

class ShowNews extends StatefulWidget {
  final Article news;
  const ShowNews({ Key? key, required  this.news }) : super(key: key);

  @override
  _ShowNewsState createState() => _ShowNewsState();
}

class _ShowNewsState extends State<ShowNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News"),),
      body:ListView(
        children: [
          Container(color: Colors.grey.shade300,
            child: Text(widget.news.title,style: TextStyle(color: Colors.black,fontSize: 20,),)),
            Row(mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text(widget.news.publishedAt.toLocal().toString(),style: TextStyle(color: Colors.black,),),
               ],
             ),
            SizedBox(height: 5,),
          Image.network(widget.news.urlToImage.toString()),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey.shade100,
            child: Text(widget.news.description.toString(),style: TextStyle(color: Colors.black,fontSize: 18),)),

             

        ],
      ) ,      
    );
  }
}