import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaradia/constant.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(Icons.add_alert_rounded,color: defaultColor,),
            SizedBox(width: 15.0,),
            Expanded(
              child: Text('تم تسجيل الدخول بنجاح',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.0
              ),),
            ),
            Text('منذ 12 دقيقه'
              ,style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 13.0
              ),),
          ],
        ),
      ),
    );
  }
}
