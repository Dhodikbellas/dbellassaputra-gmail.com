import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:router_dhodikk/main.dart';
import 'package:router_dhodikk/widget/header_widget.dart';

class WillPopScopePage extends StatefulWidget {
  @override
  _WillPopScopePageState createState() => _WillPopScopePageState();
}

class _WillPopScopePageState extends State<WillPopScopePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isAllowingPop = false;

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          if (!isAllowingPop) 

          return Future.value(isAllowingPop);
        },
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: Text(MyApp.title),
            centerTitle: true,
            leading: isAllowingPop ? BackButton() : Container(),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HeaderWidget(title: 'button'),
                const SizedBox(height: 24),
                Text(
                  'button',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 12),
                buildToggle(),
              ],
            ),
          ),
        ),
      );

  Widget buildToggle() => CupertinoSwitch(
        value: isAllowingPop,
        onChanged: (value) => setState(() => isAllowingPop = value),
      );
}
