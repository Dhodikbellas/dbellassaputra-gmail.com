import 'package:flutter/material.dart';
import 'package:router_dhodikk/main.dart';
import 'package:router_dhodikk/page/second_page.dart';
import 'package:router_dhodikk/widget/button_widget.dart';
import 'package:router_dhodikk/widget/header_widget.dart';

class ThirdPage extends StatelessWidget {
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
                onClicked: () => Navigator.pop(context),
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: 'button',
                onClicked: () => Navigator.popUntil(
                  context,
                  ModalRoute.withName('/'),
                ),
              ),
            ],
          ),
        ),
      );
}
