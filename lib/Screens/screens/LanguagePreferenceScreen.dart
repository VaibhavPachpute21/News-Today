import 'package:flutter/material.dart';

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}
 
class NumberList {
  String lang;
  int index;
  NumberList({required this.lang, required this.index});
  
}
 
class RadioGroupWidget extends State {
 
  String radioItemHolder = 'English'; 
  int id = 1;
          
  List<NumberList> nList = [
    NumberList(
      index: 1,
      lang: "English",
    ),
    NumberList(
      index: 2,
      lang: "हिन्दी",
    ),
    NumberList(
      index: 3,
      lang: "ಕನ್ನಡ",
    ),
    NumberList(
      index: 4,
      lang: "తెలుగు",
    ),
    NumberList(
      index: 5,
      lang: "தமிழ்",
    ),
    NumberList(
      index:6,
      lang: "മലയാളം"
    ),
    NumberList(
      index: 7,
      lang: "मराठी",
    ),
    NumberList(
      index: 8,
      lang: "বাংলা",
    ),
    NumberList(
      index:9,
      lang:"ગુજરાતી"
    ),
    NumberList(
      index:9,
      lang:"ਪੰਜਾਬੀ"
    )
  ];
 
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
           Padding(
            padding : EdgeInsets.all(14.0),
            child: Text('Selected Item = '+'$radioItemHolder', style: TextStyle(fontSize: 23))
              ),
           Expanded(
            child: Container(
            height: 350.0,
            child: Column(
              children: 
                nList.map((data) => RadioListTile(
                  title: Text("${data.lang}"),
                  groupValue: id,
                  value: data.index,
                  onChanged: (val) {
                    setState(() {
                      radioItemHolder = data.lang ;
                      id = data.index;
                    });
                  },
                )).toList(),
            ),
          )),
          
        ],
    );
  }
}