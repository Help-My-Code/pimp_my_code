import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:getwidget/getwidget.dart';
import '../widgets/app-bar/app_bar_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarMenu(),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    GFButton(
                      onPressed: () {},
                      text: 'new_publication'.tr(),
                      icon: const Icon(Icons.add_box_outlined,
                          color: Colors.white),
                      color: Colors.amber,
                      textColor: Colors.white,
                    ),
                    const GFAvatar(
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg')),
                  ],
                )),
          ),
        ));
  }
}
