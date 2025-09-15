import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:ieca_mobile/widgets/items/litany_content_item.dart';

class LitanyMapSearch extends StatelessWidget {
  final MapEntry<LitanyTitle, List<LitanyContent>> item;

  const LitanyMapSearch({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context, isScrollControlled: true, builder: (_) {
                return LitanyContentModalBottomSheet(litanyTitle: item.key);
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    NumberBackgroundCenter(number: item.key.position),
                    Text(item.key.name, style: GoogleFonts.roboto(fontSize: 18),),
                  ],
                ),
                Icon(Icons.open_in_new),
              ],
            ),
          ),
          Column(
            spacing: 10,
            children: item.value.map((it) {
              return LitanyContentItem(litanyContent: it);
            }).toList(),
          )
      ],
    );
  }
}
