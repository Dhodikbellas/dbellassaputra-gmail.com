import 'package:flutter/material.dart';
import 'package:router_dhodikk/main.dart';
import 'package:router_dhodikk/page/third_page.dart';
import 'package:router_dhodikk/widget/button_widget.dart';
import 'package:router_dhodikk/widget/header_widget.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HeaderWidget(title: 'button'),
              ButtonWidget(
                text: 'button',
                onClicked: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                ),
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: 'button',
                onClicked: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      );
}
