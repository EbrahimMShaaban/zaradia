import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common_component/custom_app_bar.dart';
import '../../constant.dart';
import 'component/plumber_item.dart';

class PlumberView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          color: defaultColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).viewPadding.top,
                ),
                const CustomAppBar(
                  text: 'السباكه',
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(20),
                        topStart: Radius.circular(20),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Row(
                          children: [
                          Expanded(
                            child: Row(children: [
                              Icon(Icons.check_circle,color: Colors.green,size: 16.0,),
                              SizedBox(width: 4.0,),
                              Expanded(
                                child: Text('طرق دفع امنه',maxLines:1,overflow:TextOverflow.ellipsis ,style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 13.0
                                ),),
                              ),
                            ],),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                color: Colors.grey,
                                height: 30,
                                width: 1.0,
                              ),
                            ),
                            Expanded(
                              child: Row(children: [
                                Icon(Icons.check_circle,color: Colors.green,size: 16.0,),
                                SizedBox(width: 4.0,),
                                Expanded(
                                  child: Text('ننجزها باحترافيه',maxLines:1,overflow:TextOverflow.ellipsis ,style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13.0
                                  ),),
                                ),
                              ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                color: Colors.grey,
                                height: 30,
                                width: 1.0,
                              ),
                            ),
                            Expanded(
                              child: Row(children: [
                                Icon(Icons.check_circle,color: Colors.green,size: 16.0,),
                                SizedBox(width: 4.0,),
                                Expanded(
                                  child: Text('ضمان ذهبي',maxLines:1,overflow:TextOverflow.ellipsis ,style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13.0
                                  ),),
                                ),
                              ],),
                            ),
                        ],),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Text('اختر الخدمه',
                      style: Theme.of(context).textTheme.bodyText2,),
                      ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context,index) => PlumberItem(),
                          separatorBuilder: (context,index) =>SizedBox(height: 4.0,),
                          itemCount: 6)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
