import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:myntra/constants/text.dart';
import 'package:myntra/constants/theme.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final _controller = TextEditingController();
  _product() {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Container(
          color: Colors.pink,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              backgroundColor: Colors.white,
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      height: 50,
                      width: 50,
                      // color: Colors.red,
                      child: Image.asset(
                        "assets/logopng.png",
                        fit: BoxFit.fitHeight,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Myntra',
                    style: boldtextsyle(20, color: Colors.black),
                  ),
                ],
              ),
              expandedHeight: 170.0,
              stretch: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 120.0),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 16.0),
                        child: Container(
                            height: 50.0,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    // color: Colors.black
                                  )
                                ]),
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 7),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              // maxLength: 100,
                              decoration: InputDecoration(
                                icon: FaIcon(FontAwesomeIcons.search),
                                labelText: "Search for Products",
                                border: InputBorder.none,
                              ),
                              controller: _controller,
                            )),
                      ),
                    ],
                  ),
                ),
              )),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildListDelegate(
              [
                _product(),
                _product(),
                _product(),
                _product(),
                _product(),
                _product(),
                _product(),
                _product(),
                _product(),
                _product(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
