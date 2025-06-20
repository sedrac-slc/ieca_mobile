import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/screens/hymns_content_screen.dart';
import 'package:ieca_mobile/widgets/_import.dart';

class GridHymns extends StatelessWidget {
  final List<HymnsNumber> hymnsNumbers;

  const GridHymns({super.key, required this.hymnsNumbers});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 5,
      mainAxisSpacing: 10,
      childAspectRatio: 1.0,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: hymnsNumbers.map((it) {
        return InkWell(
          child: NumberHymns(number: it.num,),
          onTap: () {
            Navigator.push( context,
              MaterialPageRoute(
                builder: (context) => HymnsContentScreen(hymnsNumber: it),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
