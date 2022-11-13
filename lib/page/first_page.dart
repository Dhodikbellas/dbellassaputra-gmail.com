import 'package:flutter/material.dart';
import 'package:router_dhodikk/main.dart';
import 'package:router_dhodikk/page/pop_result_page.dart';
import 'package:router_dhodikk/page/second_page.dart';
import 'package:router_dhodikk/page/willpop_page.dart';
import 'package:router_dhodikk/widget/button_widget.dart';
import 'package:router_dhodikk/widget/header_widget.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) => Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeaderWidget(title: 'SELAMAT DATANG'),
              ButtonWidget(
                text: 'HOME',
                onClicked: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                ),
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: 'PORTOFOLIO',
                onClicked: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                ),
              ),
              Divider(height: 48),
              ButtonWidget(
                text: 'DESKRIPSI',
                onClicked: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WillPopScopePage()),
                ),
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: 'LOGIN',
                onClicked: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PopResultPage(
                        data: 'Some data from Page 1',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );
}
