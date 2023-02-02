import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        Flexible(
          child: LayoutBuilder(
            builder: (context, constraints) {
              print(constraints.biggest);
              return const AutoSizeText(
                'Criação de Apps Android e iOS com Flutter - Crie 16 apps',
                maxLines: 2,
                minFontSize: 3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              );
            }
          ),
        ),
        const Text('Daniel Ciolfi', style: TextStyle(color: Colors.grey),),
        const Text('R\$22,90',style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),)
      ],
    );
  }
}
