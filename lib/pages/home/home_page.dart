import 'package:flutter/material.dart';
import 'package:flutter_responsivity/breakpoints.dart';
import 'package:flutter_responsivity/pages/home/widgets/mobile_app_bar.dart';
import 'package:flutter_responsivity/pages/home/widgets/sections/advantage_section.dart';
import 'package:flutter_responsivity/pages/home/widgets/sections/courses_section.dart';
import 'package:flutter_responsivity/pages/home/widgets/sections/top_section.dart';
import 'package:flutter_responsivity/pages/home/widgets/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakpoint
            ? const PreferredSize(
                preferredSize: Size(
                  double.infinity,
                  56,
                ),
                child: MobileAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(
                  double.infinity,
                  72,
                ),
                child: WebAppBar(),
              ),
        drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
        body: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1400,
            ),
            child: ListView(
             children: const [
               TopSection(),
               AdvantageSection(),
               CoursesSection(),
             ],
            ),
          ),
        ),
      );
    });
  }
}
