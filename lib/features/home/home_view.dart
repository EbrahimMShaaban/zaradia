import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constant.dart';
import '../../layout/layout_controller.dart';
import '../../layout/layout_states.dart';

class HomeView extends StatelessWidget {
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
                padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange[200],
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.add_location_alt_outlined,size: 18.0,color: Colors.white,),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('نخدمك في:',
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                          Text('9957 Kassandra Gardens',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.deepOrange[200],
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.doorbell_outlined,size: 20.0,color: Colors.white,),
                    ),
                  ],
                ),
              ),

              Container(
                height: 598,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.bottomCenter ,
                      child: Container(
                        height: 528,
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
                              height: 100.0,
                            ),
                            Text('وش نخدمك به؟',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: defaultColor,
                                  fontWeight: FontWeight.bold
                              ),),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 220,
                                    child: Stack(
                                      alignment: AlignmentDirectional.topCenter,
                                      children: [
                                        Align(
                                          alignment: AlignmentDirectional.bottomCenter,
                                          child: Container(
                                            height: 175 ,
                                            child: Card(
                                              elevation: 12.0,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 53,horizontal: 40.0),
                                                child: Column(children: [
                                                  Text('كهرباء',
                                                    style: TextStyle(
                                                        fontSize: 19,
                                                        color: defaultColor,
                                                        fontWeight: FontWeight.bold
                                                    ),),
                                                  Text('Electricity',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: defaultColor,
                                                    ),),
                                                ],),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Image(image: AssetImage('assets/images/electric.png'),height: 110,width: 110,),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 220,
                                    child: Stack(
                                      alignment: AlignmentDirectional.topCenter,
                                      children: [
                                        Align(
                                          alignment: AlignmentDirectional.bottomCenter,
                                          child: Container(
                                            height: 175 ,
                                            child: Card(
                                              elevation: 12.0,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 53,horizontal: 40.0),
                                                child: Column(children: [
                                                  Text('سباكه',
                                                    style: TextStyle(
                                                        fontSize: 19,
                                                        color: defaultColor,
                                                        fontWeight: FontWeight.bold
                                                    ),),
                                                  Text('Plumbing',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: defaultColor,
                                                    ),),
                                                ],),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Image(image: AssetImage('assets/images/plmber.png'),height: 110,width: 110,),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Container(
                              padding: EdgeInsets.all(13.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(15.0),
                                  topEnd: Radius.circular(15.0),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image(image: AssetImage('assets/images/whats.png'),height: 40,width: 40,fit: BoxFit.cover,),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('لطلب عبر الوتساب',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                          ),),
                                          Text('ارسل مشكلتك وصوره لها واترك الباقي علينا',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context).textTheme.bodyText1,)
                                        ],
                                      ),

                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width- 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(14.0)
                      ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('اختر الخدمه التي تناسبك',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: defaultColor,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Text('خياراتك لصيانه منزلك صارت متنوعه وتناسب احتياجاتك.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),),

                                ],
                              ),
                            ),
                            Image(image: AssetImage('assets/images/home.png'),height: 150,width: 150,fit: BoxFit.cover,)
                          ],
                        )
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