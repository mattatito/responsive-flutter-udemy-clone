
import 'package:flutter/material.dart';

class AdvantageSection extends StatelessWidget {
  const AdvantageSection ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildAdvantage(String title, String subtitle){
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star, color: Colors.white, size: 50,),
          Column(
            children:[
              Text(title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
              Text(subtitle, style: const TextStyle(color: Colors.white),),
            ],
          ),
        ],
      );
    }
    return Container(
      padding: const EdgeInsets.fromLTRB(16,0,16,8),
      decoration: const BoxDecoration(border: Border(bottom:BorderSide(color: Colors.grey) )),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        children: [
          buildAdvantage("aaaaaaa","aaaaaaaaaaaaaaaa"),
          buildAdvantage("aaaaaaa","aaaaaaaaaaaaaaaaaaaaaaaa"),
          buildAdvantage("aaaaaa","aaaaaaaaaaaaa"),
        ],
      ),
    );
  }
}

