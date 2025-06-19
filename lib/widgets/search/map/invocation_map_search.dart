import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:ieca_mobile/widgets/items/_import.dart';

class InvocationMapSearch extends StatelessWidget {
  final MapEntry<InvocationTitle, List<InvocationContent>> item;

  const InvocationMapSearch({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context, isScrollControlled: true, builder: (_)  {
                return InvocationContentModalBottomSheet(invocationTitle: item.key);
              });
            },
            child: ListTile(
              title: Text(item.key.name, style: GoogleFonts.roboto(fontSize: 18),),
              trailing: Icon(Icons.open_in_new),
              contentPadding: EdgeInsets.zero,
            ),
          ),
          Column(
            spacing: 10,
            children: item.value.map((it) {
              return InvocationContentItem(invocationContent: it);
            }).toList(),
          )
      ],
    );
  }
}
