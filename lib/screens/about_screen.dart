import 'package:flutter/material.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/widgets/logo_ieca.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(AppIconData.iconBack)),
        title: Text("Sobre"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 40),
              child: LogoIeca(width: 100, height: 100,),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                    "Este aplicativo oferece uma coletânea completa das canções do Hinário da IECA, "
                    "permitindo acesso rápido, pesquisa eficiente e navegação intuitiva para todos os "
                    "membros e interessados na música litúrgica da nossa comunidade.",
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ListTile(title: Text("Desenvolvido por: "), trailing: Text("Sedrac L.Calupeteca"),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
