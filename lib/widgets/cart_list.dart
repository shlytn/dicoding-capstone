// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dicoding_capstone_pos/common/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListViewCart extends StatelessWidget {
  const ListViewCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: 1,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
          child: Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/food.jpg'),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tuna Salad',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '(must choose level)',
                          style: TextStyle(
                              fontSize: 12,
                              color: CupertinoColors.inactiveGray),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          '\$10.99',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: secondaryColor),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 1, right: 20.0, top: 25),
                    child: Container(
                      height: 32.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: secondaryColor),
                      child: Row(
                        children: [
                          IconButton(
                            splashColor: Colors.transparent,
                            iconSize: 16,
                            padding: const EdgeInsets.all(0),
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.minus),
                          ),
                          Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                            splashColor: Colors.transparent,
                            iconSize: 16,
                            padding: const EdgeInsets.all(0),
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(CupertinoIcons.add),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}