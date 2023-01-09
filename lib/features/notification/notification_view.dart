import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common_component/custom_app_bar.dart';
import '../../constant.dart';
import 'component/notification_card.dart';

class NotificationView extends StatelessWidget {
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
                  text: 'الاشعارات',
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
                      SizedBox(height: 10.0,),
                      Text('اليوم',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context,index) => NotificationCard(),
                          separatorBuilder: (context,index) =>SizedBox(height: 15.0,),
                          itemCount: 7)
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
