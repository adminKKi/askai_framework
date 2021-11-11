import 'package:flutter/cupertino.dart';

class KaiImageWidget extends StatelessWidget {
  final String assetsImage;
  final String networkImage;

  const KaiImageWidget({Key? key,required this.assetsImage, required this.networkImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(assetsImage + networkImage + 'asdasds');
    return FadeInImage.assetNetwork(
      placeholder: assetsImage != "" ? assetsImage : 'images/register_bg.png',
      image: networkImage != "" ? networkImage : 'http://askaii.cn/myimg/register_bg.png',
      fit: BoxFit.cover,
      repeat: ImageRepeat.noRepeat,
      alignment: Alignment.center,
      imageScale: 1.0,
      placeholderScale: 1.0,
      // fadeInDuration: ,
      fadeInCurve: Curves.easeInCubic,
    );
  }
}
