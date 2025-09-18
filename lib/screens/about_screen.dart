import 'package:flutter/material.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/widgets/logo_ieca.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _version = "";
  String _buildNumber = "";

  @override
  void initState() {
    super.initState();
    _loadPackageInfo();
  }

  Future<void> _loadPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _version = info.version;
      _buildNumber = info.buildNumber;
    });
  }

  Future<void> _launchPhone(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(AppIconData.iconBack),
        ),
        title: const Text("Sobre"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 30),
              child: LogoIeca(width: 100, height: 100),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                  ListTile(
                      title: const Text("Versão:"),
                      trailing: Text(_version.isEmpty ? "..." : _version),
                  ),

                  ListTile(
                    title: const Text("Compilação:"),
                    trailing: Text(_buildNumber.isEmpty ? "..." : _buildNumber),
                  ),

                  const SizedBox(height: 50,),

                  Container(
                    decoration: BoxDecoration(
                      color: ColorScheme.of(context).onSecondary,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text("Desenvolvido por"), trailing: Text("Sedrac L. Calupeteca"),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text("Contacto"),
                          trailing: Text("936269780"),
                          onTap: () => _launchPhone("936269780"),
                        ),
                        ListTile(
                          leading: Icon(Icons.open_in_browser),
                          title: Text("Portifolio"),
                          trailing: Text("https://slc-sedrac...", overflow: TextOverflow.ellipsis,),
                          onTap: () => _launchURL("https://slc-sedrac.netlify.app/"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
