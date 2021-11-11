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
      image: networkImage != "" ? networkImage : 'https://upload.jianshu.io/users/upload_avatars/7776337/31ec4585-f085-4af3-8abc-e44657057578?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96',
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
