import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' Lorem ipsum dolor sit amet,  elit',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis condimentum ac, vestibulum eu nisl.',
          style: TextStyle(color: Colors.grey[600], fontSize: 13.0),
        )
      ],
    );
  }
}
