import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/InvocationTitle.dart';
import 'package:ieca_mobile/repository/InvocationContentRepository.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/number_background_center.dart';

class InvocationContentModalBottomSheet extends StatefulWidget {
  final InvocationTitle invocationTitle;

  const InvocationContentModalBottomSheet({
    super.key,
    required this.invocationTitle,
  });

  @override
  State<InvocationContentModalBottomSheet> createState() =>
      _InvocationContentModalBottomSheetState();
}

class _InvocationContentModalBottomSheetState
    extends State<InvocationContentModalBottomSheet> {
  final InvocationContentRepository _invocationContentRepository =
      InvocationContentRepository();

  @override
  Widget build(BuildContext context) {
    final colorSchema = AppTheme.colorScheme(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: <Widget>[
          const SizedBox(height: 5),
          InkWell(
            onTap: () { Navigator.pop(context); },
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              width: 100,
              height: 13,
              decoration: BoxDecoration(
                color: colorSchema.primary,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _invocationContentRepository.getBy(
                widget.invocationTitle,
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: snapshot.requireData.map((it) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15, left: 25, right: 25,),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                NumberBackgroundCenter(number: it.position),
                                Expanded(child: Text(it.content)),
                              ],
                            ),
                          );
                        }).toList(),
                  );
                } else {
                  return Center(
                    child: RepaintBoundary(child: CircularProgressIndicator()),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
