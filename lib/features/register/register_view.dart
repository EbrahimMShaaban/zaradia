import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaradia/common_component/custom_button.dart';
import 'package:zaradia/common_component/custom_text_button.dart';
import 'package:zaradia/common_component/custom_text_field.dart';
import 'package:zaradia/features/ensure/ensure_view.dart';
import 'package:zaradia/features/login/login_view.dart';

import '../../constant.dart';
import '../../core/router/router.dart';

class RegisterView extends StatelessWidget {
  var fName = TextEditingController();
  var sName = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController();
  var passwordEnsure = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text('انشاء حساب',
                    style: Theme.of(context).textTheme.bodyText2,),
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
                  CustomTextField(
                    upperText: 'كلمه السر',
                    hint: 'كلمه السر',
                    secure: true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: password,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Add Your Data';
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    upperText: 'تاكيد كلمه السر',
                    hint: 'تاكيد كلمه السر',
                    secure: true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordEnsure,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Add Your Data';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0,),
                  CustomButton(
                    onPress: (){
                      if(formKey.currentState!.validate()){
                        MagicRouter.navigateTo(EnsureView());
                      }
                    },
                    text: 'انشاء حساب',
                    bgColor: defaultColor,
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.grey[300],
                          height: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('او',
                        style: Theme.of(context).textTheme.bodyText1,),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey[300],
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/google.png'),width: 25.0,height: 25.0,),
                        SizedBox(width: 15.0,),
                        Text('انشاءحساب بواسطه حساب جوجل',
                          style: Theme.of(context).textTheme.bodyText1,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('لديك حساب بالفعل؟',
                        style: Theme.of(context).textTheme.bodyText1,),
                      CustomTextButton(
                        text: 'تسجيل الدخول',
                        onPressed: (){
                          MagicRouter.navigateAndPopAll(LoginView());
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
