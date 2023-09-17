import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 130.0,
          width: 220.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 40.0,
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 0.0,
                offset: const Offset(10, 10),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 130,
                width: 220,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 40,
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 0,
                      offset: const Offset(10, 10),
                    )
                  ],
                ),
                child: const Card(
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HandBag LV',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              r'$225',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 32.0,
                top: -65.0,
                child: Image.network(
                  'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
                  height: 100.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
