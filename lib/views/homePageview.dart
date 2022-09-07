import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/cardCourt.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homepage();
  }
}

class _homepage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Colors.black, size: 45),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              Text(
                'Location',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontStyle: FontStyle.normal),
              )
            ],
          ),
          bottom: AppBar(
            title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Recherchez une équipe",
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    isCollapsed: true,
                    contentPadding:
                        const EdgeInsets.fromLTRB(15.0, 10.0, 5.0, 10.0),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white10),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Terrains populaires',
                              style: GoogleFonts.assistant(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          InkWell(
                            onTap: () {
                              print('Text Clicked');
                            },
                            child: Text('Voir tous',
                                style: GoogleFonts.assistant(
                                    color: Colors.black,
                                    fontSize: 18)),
                          ),
                        ],
                      ),
                      cardCourt(),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
