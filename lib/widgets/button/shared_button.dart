import 'package:flutter/material.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:social_sharing_plus/social_sharing_plus.dart';

class SharedButton extends StatefulWidget {
  final String message;

  const SharedButton({super.key, required this.message});

  @override
  State<SharedButton> createState() => _SharedButtonState();
}

class _SharedButtonState extends State<SharedButton> {
  @override
  Widget build(BuildContext context) {

    return IconButton(
      onPressed: () async {
        final selectedPlatform = await showModalBottomSheet<SocialPlatform>(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 120,
              child: Column(
                children: [
                  ModalButtonTop(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _SocialButton(
                        platform: SocialPlatform.facebook,
                        asset: AppAsset.facebook,
                        text: "Facebook",
                      ),
                      _SocialButton(
                          platform: SocialPlatform.whatsapp,
                          asset: AppAsset.whatsapp,
                          text: "Whatsapp",
                      )
                    ],),
                ],
              ),
            );
          },
        );

        if (selectedPlatform != null) {
          await SocialSharingPlus.shareToSocialMedia(selectedPlatform, widget.message,);
        }
      },
      icon: const Icon(Icons.share),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final SocialPlatform platform;
  final String asset;
  final String text;

  const _SocialButton({required this.platform, required this.asset, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context, platform),
      child: Container(
        child: Column(
            children: [
              Image.asset(asset, height: 50, width: 50,),
              Text(text),
            ]
        ),
      ),
    );
  }
}
