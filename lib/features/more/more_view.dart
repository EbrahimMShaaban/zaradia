import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constant.dart';
import '../../layout/layout_controller.dart';
import '../../layout/layout_states.dart';

class MoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ZaradiaController, ZaradiaStates>(builder: (context,state){
      return Container(
        color: defaultColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).viewPadding.top,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 16.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.40,
                    ),
                    Text('المزيد',
                      style: TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.deepOrange[200],
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.keyboard_arrow_down_outlined,size: 20.0,color: Colors.white,),
                          Text('ع',style: TextStyle(
                              color: Colors.white,
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 517,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.bottomCenter ,
                      child: Container(
                        height: 453,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(20.0),
                            topEnd: Radius.circular(20.0),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 75.0,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Abdalaziz145',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  )),
                                Icon(Icons.edit,size: 16,color: Colors.grey[700],),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Abdalaziz145@gnail.com',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0
                                )),
                            SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: (){},
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.group,color: Colors.grey[600],),
                                      SizedBox(width: 15.0,),
                                      Text('قطاع اعمال',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 16.0
                                      ),),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey[600],),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            InkWell(
                              onTap: (){},
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.question_mark,color: Colors.grey[600],),
                                      SizedBox(width: 15.0,),
                                      Text('اسئله شائعه',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 16.0
                                        ),),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey[600],),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            InkWell(
                              onTap: (){},
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.account_circle_outlined,color: Colors.grey[600],),
                                      SizedBox(width: 15.0,),
                                      Text('التسجيل كمزود خدمه',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 16.0
                                        ),),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey[600],),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            InkWell(
                              onTap: (){},
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.share_outlined,color: Colors.grey[600],),
                                      SizedBox(width: 15.0,),
                                      Text('شارك التطبيق',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 16.0
                                        ),),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey[600],),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: defaultColor
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80,),
                        image: DecorationImage(
                          image: AssetImage('assets/images/more.png')
                        )
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}