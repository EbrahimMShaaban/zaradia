import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaradia/common_component/custom_button.dart';
import 'package:zaradia/common_component/custom_text_field.dart';

import '../../common_component/custom_app_bar.dart';
import '../../constant.dart';

class ProfileView extends StatelessWidget {
  var fName = TextEditingController();
  var sName = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var cardNumber = TextEditingController();
  var formKey = GlobalKey<FormState>();
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
                  text: 'الملف الشخصي',
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(20),
                        topStart: Radius.circular(20),
                      )),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.0,
                                    color: defaultColor),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(80,),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/more.png')
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(children: [
                          Expanded(
                            child: CustomTextField(
                              upperText: 'الاسم الاول',
                              hint: 'الاسم الاول',
                              controller: fName,
                              keyboardType: TextInputType.text,
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Add Your Data';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Expanded(
                            child: CustomTextField(
                              upperText: 'الاسم الثاني',
                              hint: 'الاسم الثاني',
                              keyboardType: TextInputType.text,
                              controller: sName,
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Add Your Data';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],),
                        SizedBox(height: 15.0,),
                        CustomTextField(
                          upperText: 'البريد الالكتروني',
                          hint: 'البريد الالكتروني',
                          keyboardType: TextInputType.emailAddress,
                          controller: email,
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Add Your Data';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15.0,),
                        CustomTextField(
                          upperText: 'رقم اجوال',
                          hint: 'رقم اجوال',
                          controller: phone,
                          keyboardType: TextInputType.phone,
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Add Your Data';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15.0,),
                        Text('عناويني',style: Theme.of(context).textTheme.bodyText1,),
                        SizedBox(
                          height: 6.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.add_location_outlined,color: Colors.grey,size: 22.0,),
                              SizedBox(width: 8.0,),
                              Expanded(child: Text('9957 Kassandra Gardens',style: TextStyle(color: Colors.grey[600], fontSize: 15.0))),
                              Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,size: 25.0,),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Text('البطاقه المسجله',style: Theme.of(context).textTheme.bodyText1,),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                hint: 'لا يوجد بطاقه مسجله',
                                controller: cardNumber,
                                keyboardType: TextInputType.number,
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Add Your Data';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            InkWell(
                              onTap: (){

                              },
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(254, 87, 34, 0.2),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text('اضافه',
                                  style: TextStyle(
                                  color: defaultColor,
                                  fontSize: 15
                                ),),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        CustomButton(
                          text: 'حفظ',
                          onPress: (){},
                          bgColor: defaultColor,
                        )
                      ],
                    ),
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
