import 'package:flutter/material.dart';
import 'package:flutter_responsivity/pages/home/widgets/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Flutter'),
          const SizedBox(
            width: 32,
          ),
          const WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white, width: 2),
              ),
              onPressed: () {},
              child: const Text(
                "Fazer Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 39,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text("Cadastre-se", style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
    );
  }
}
