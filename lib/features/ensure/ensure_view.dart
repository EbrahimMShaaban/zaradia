import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaradia/common_component/custom_button.dart';
import 'package:zaradia/common_component/custom_text_button.dart';
import 'package:zaradia/common_component/custom_text_field.dart';
import 'package:zaradia/core/router/router.dart';
import '../../constant.dart';
import '../location/location_view.dart';

class EnsureView extends StatelessWidget {
  var field1 = TextEditingController();
  var field2 = TextEditingController();
  var field3 = TextEditingController();
  var field4 = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text('رمز التحقق',
                    style: Theme.of(context).textTheme.bodyText2,),
                  SizedBox(
                    height: 15.0,
                  ),
                  Image(
                    image: AssetImage('assets/images/ensure.png'),
                    width: double.infinity,
                    height:230,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('ادخل رمز التحقق',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      color: Colors.blueAccent
                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('ادخل رقم التحق المرسل علي الرقم 23456789034',
                    style: Theme.of(context).textTheme.bodyText1),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: CustomTextField(
                              controller: field1,
                              keyboardType: TextInputType.number,
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Add Your Data';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: CustomTextField(
                              controller: field1,
                              keyboardType: TextInputType.number,
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Add Your Data';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: CustomTextField(
                              controller: field1,
                              keyboardType: TextInputType.number,
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Add Your Data';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: CustomTextField(
                              controller: field1,
                              keyboardType: TextInputType.number,
                              validator: (value){
                                if(value!.isEmpty){
                                  return 'Add Your Data';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('لم تستلم الرمز؟',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                        )),
                      CustomTextButton(
                        text: 'اعاده الارسال',
                        onPressed: (){
                        },
                      )
                    ],
                  ),
                  Text('يمكنك اعاده ارسال الرمز في 55 ث',
                    style: Theme.of(context).textTheme.bodyText1),
                  SizedBox(
                    height: 15.0,
                  ),
                  CustomButton(
                    onPress: (){
                      if(formKey.currentState!.validate()){
                        MagicRouter.navigateAndPopAll(LocationView());
                      }
                    },
                    text:'تحقق',
                    bgColor: defaultColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
