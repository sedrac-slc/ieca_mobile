import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:ieca_mobile/widgets/_import.dart';

class HistoricGroup extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const HistoricGroup({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    final colorScheme = AppTheme.colorScheme(context);
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text(title, style: GoogleFonts.poppins()),
          CustomPaint(
            painter: DashedBorderPainter(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorScheme.onPrimary,
              ),
              child:
                  children.isEmpty
                      ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 10,
                          children: [
                            Icon(Icons.info_outline, color: Colors.grey, size: 80,),
                            Text(
                              "Não tem informação",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                      : Column(children: children),
            ),
          ),
        ],
      ),
    );
  }
}
