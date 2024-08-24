import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/responsive.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children;
  const MainScreen({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: bgColor,
                leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu)),
                )),
        drawer:  SideMenu(),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(flex: 2, child: SideMenu()),
                const SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                    flex: 7,
                    child: SingleChildScrollView(
                      child: Column(children: children),
                    )),
                const SizedBox(
                  width: defaultPadding,
                ),
              ],
            ),
          ),
        ));
  }
}
