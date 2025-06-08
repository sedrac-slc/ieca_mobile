import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/HymnsNumber.dart';
import 'package:ieca_mobile/repository/HymnsContentRepository.dart';

class HymnsContentScreen extends StatefulWidget {
  final HymnsNumber hymnsNumber;

  const HymnsContentScreen({super.key, required this.hymnsNumber});

  @override
  State<HymnsContentScreen> createState() => _HymnsContentScreenState();
}

class _HymnsContentScreenState extends State<HymnsContentScreen> {
  final HymnsContentRepository _hymnsContentRepository = HymnsContentRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: FutureBuilder(
        future: _hymnsContentRepository.getBy(widget.hymnsNumber,),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: snapshot.requireData.map((it) {
                return Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 3,
                    children: [
                      Text(it.content),
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
    );
  }
}
