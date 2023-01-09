import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common_component/custom_app_bar.dart';
import '../../constant.dart';
import 'component/question_item.dart';

class QuestionView extends StatelessWidget {
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
                  text: 'اسئله شائعه',
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 16,
                    start: 16,
                    end: 16,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(20),
                        topStart: Radius.circular(20),
                      )),
                  child: ListView.separated(
                    shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index) => QuestionItem(),
                      separatorBuilder: (context,index) => SizedBox(height: 6.0,),
                      itemCount: 9),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
