import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaradia/constant.dart';

class ListItem {
  final String title;
  final String text;
  final String price;

  ListItem({required this.title, required this.text, required this.price});
}

class PlumberItem extends StatelessWidget {
  List<ListItem> items = [
    ListItem(
        title: 'ننجزها باحترافيه',
        text: ' ادوات دورات المياه صانه وتغير وتركيب وتمديد ادوات دورات المياه',
        price: '316'),
    ListItem(
        title: 'ننجزها باحترافيه',
        text: ' ادوات دورات المياه صانه وتغير وتركيب وتمديد ادوات دورات المياه',
        price: '316'),
    ListItem(
        title: 'ننجزها باحترافيه',
        text: ' ادوات دورات المياه صانه وتغير وتركيب وتمديد ادوات دورات المياه',
        price: '316'),
    ListItem(
        title: 'ننجزها باحترافيه',
        text: ' ادوات دورات المياه صانه وتغير وتركيب وتمديد ادوات دورات المياه',
        price: '316'),

  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpansionTile(
//          title: Text('see more'),
//          children: [
//            ListTile(title: Text('first'),),
//            ListTile(title: Text('second'),),
//            ListTile(title: Text('third'),),
//          ],
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ادوا صحيه',
                style: TextStyle(color: defaultColor, fontSize: 19.0),
              ),
              Text(
                'صانه وتغير وتركيب وتمديد ادوات دورات المياه',
                style: TextStyle(color: Colors.grey[600], fontSize: 15.0),
              )
            ],
          ),


          children: items.map((e) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0,),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                )
              ),
              child: Column(
                children: [
                  Row(children: [
                    CircleAvatar(
                      radius: 3.0,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Text(e.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Row(children: [
                      Text("يبدا من",style: Theme.of(context).textTheme.bodyText1,),
                      Text(' ${e.price} ',style: TextStyle(
                        color: defaultColor,
                        fontSize: 15.0
                      ),),
                      Text('ريال',style: Theme.of(context).textTheme.bodyText1,)
                    ],)


                  ],),
                  Text(e.text,style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15.0
                  ))

                ],
              ),
            ),
          )).toList(),
        ),
      ),
    );
  }
}
