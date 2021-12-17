// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dicoding_capstone_pos/data/models/item.dart';
import 'package:dicoding_capstone_pos/widgets/product_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ListViewProduct extends StatelessWidget {
  const ListViewProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<List<Item>>(context);

    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CardProduct(item: items[index],);
      },
    );
  }
}